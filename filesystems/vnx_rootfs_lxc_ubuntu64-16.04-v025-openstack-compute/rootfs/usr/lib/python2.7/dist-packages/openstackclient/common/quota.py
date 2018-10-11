#   Copyright 2012 OpenStack Foundation
#
#   Licensed under the Apache License, Version 2.0 (the "License"); you may
#   not use this file except in compliance with the License. You may obtain
#   a copy of the License at
#
#        http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
#   WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
#   License for the specific language governing permissions and limitations
#   under the License.
#

"""Quota action implementations"""

import itertools
import sys

from openstack import exceptions as sdk_exceptions
from openstack.network.v2 import quota as _quota
from osc_lib.command import command
from osc_lib import utils
import six

from openstackclient.i18n import _


# List the quota items, map the internal argument name to the option
# name that the user sees.

COMPUTE_QUOTAS = {
    'cores': 'cores',
    'fixed_ips': 'fixed-ips',
    'injected_file_content_bytes': 'injected-file-size',
    'injected_file_path_bytes': 'injected-path-size',
    'injected_files': 'injected-files',
    'instances': 'instances',
    'key_pairs': 'key-pairs',
    'metadata_items': 'properties',
    'ram': 'ram',
    'server_groups': 'server-groups',
    'server_group_members': 'server-group-members',
}

VOLUME_QUOTAS = {
    'backups': 'backups',
    'backup_gigabytes': 'backup-gigabytes',
    'gigabytes': 'gigabytes',
    'per_volume_gigabytes': 'per-volume-gigabytes',
    'snapshots': 'snapshots',
    'volumes': 'volumes',
}

IMPACT_VOLUME_TYPE_QUOTAS = [
    'gigabytes',
    'snapshots',
    'volumes',
]

NOVA_NETWORK_QUOTAS = {
    'floating_ips': 'floating-ips',
    'security_group_rules': 'secgroup-rules',
    'security_groups': 'secgroups',
}

NETWORK_QUOTAS = {
    'floatingip': 'floating-ips',
    'security_group_rule': 'secgroup-rules',
    'security_group': 'secgroups',
    'network': 'networks',
    'subnet': 'subnets',
    'port': 'ports',
    'router': 'routers',
    'rbac_policy': 'rbac-policies',
    'vip': 'vips',
    'subnetpool': 'subnetpools',
    'healthmonitor': 'health-monitors',
    'l7policy': 'l7policies',
}


class SetQuota(command.Command):
    _description = _("Set quotas for project or class")

    def _build_options_list(self):
        if self.app.client_manager.is_network_endpoint_enabled():
            return itertools.chain(COMPUTE_QUOTAS.items(),
                                   VOLUME_QUOTAS.items(),
                                   NETWORK_QUOTAS.items())
        else:
            return itertools.chain(COMPUTE_QUOTAS.items(),
                                   VOLUME_QUOTAS.items(),
                                   NOVA_NETWORK_QUOTAS.items())

    def get_parser(self, prog_name):
        parser = super(SetQuota, self).get_parser(prog_name)
        parser.add_argument(
            'project',
            metavar='<project/class>',
            help=_('Set quotas for this project or class (name/ID)'),
        )
        parser.add_argument(
            '--class',
            dest='quota_class',
            action='store_true',
            default=False,
            help=_('Set quotas for <class>'),
        )
        for k, v in self._build_options_list():
            parser.add_argument(
                '--%s' % v,
                metavar='<%s>' % v,
                dest=k,
                type=int,
                help=_('New value for the %s quota') % v,
            )
        parser.add_argument(
            '--volume-type',
            metavar='<volume-type>',
            help=_('Set quotas for a specific <volume-type>'),
        )
        return parser

    def take_action(self, parsed_args):

        identity_client = self.app.client_manager.identity
        compute_client = self.app.client_manager.compute
        volume_client = self.app.client_manager.volume
        network_client = self.app.client_manager.network
        compute_kwargs = {}
        for k, v in COMPUTE_QUOTAS.items():
            value = getattr(parsed_args, k, None)
            if value is not None:
                compute_kwargs[k] = value

        volume_kwargs = {}
        for k, v in VOLUME_QUOTAS.items():
            value = getattr(parsed_args, k, None)
            if value is not None:
                if (parsed_args.volume_type and
                        k in IMPACT_VOLUME_TYPE_QUOTAS):
                    k = k + '_%s' % parsed_args.volume_type
                volume_kwargs[k] = value

        network_kwargs = {}
        if self.app.client_manager.is_network_endpoint_enabled():
            for k, v in NETWORK_QUOTAS.items():
                value = getattr(parsed_args, k, None)
                if value is not None:
                    network_kwargs[k] = value
        else:
            for k, v in NOVA_NETWORK_QUOTAS.items():
                value = getattr(parsed_args, k, None)
                if value is not None:
                    compute_kwargs[k] = value

        if parsed_args.quota_class:
            if compute_kwargs:
                compute_client.quota_classes.update(
                    parsed_args.project,
                    **compute_kwargs)
            if volume_kwargs:
                volume_client.quota_classes.update(
                    parsed_args.project,
                    **volume_kwargs)
            if network_kwargs:
                sys.stderr.write("Network quotas are ignored since quota class"
                                 "is not supported.")
        else:
            project = utils.find_resource(
                identity_client.projects,
                parsed_args.project,
            ).id
            if compute_kwargs:
                compute_client.quotas.update(
                    project,
                    **compute_kwargs)
            if volume_kwargs:
                volume_client.quotas.update(
                    project,
                    **volume_kwargs)
            if network_kwargs:
                if hasattr(_quota.Quota, 'allow_get'):
                    # TODO(huanxuan): Remove this block once the fixed
                    # SDK Quota class is the minimum required version.
                    # This is expected to be SDK release 0.9.13
                    res = network_client._get_resource(
                        _quota.Quota, project, **network_kwargs)
                    if any([res._body.dirty, res._header.dirty]):
                        request = res._prepare_request(prepend_key=True)
                        # remove the id in the body
                        if 'id' in request.body[res.resource_key]:
                            del request.body[res.resource_key]['id']
                        if res.patch_update:
                            response = network_client.session.patch(
                                request.uri,
                                endpoint_filter=res.service,
                                json=request.body,
                                headers=request.headers
                            )
                        else:
                            response = network_client.session.put(
                                request.uri,
                                endpoint_filter=res.service,
                                json=request.body,
                                headers=request.headers
                            )
                        res._translate_response(response, has_body=True)
                else:
                    network_client.update_quota(
                        project,
                        **network_kwargs)


class ShowQuota(command.ShowOne):
    _description = _("Show quotas for project or class")

    def get_parser(self, prog_name):
        parser = super(ShowQuota, self).get_parser(prog_name)
        parser.add_argument(
            'project',
            metavar='<project/class>',
            nargs='?',
            help=_('Show quotas for this project or class (name or ID)'),
        )
        type_group = parser.add_mutually_exclusive_group()
        type_group.add_argument(
            '--class',
            dest='quota_class',
            action='store_true',
            default=False,
            help=_('Show quotas for <class>'),
        )
        type_group.add_argument(
            '--default',
            dest='default',
            action='store_true',
            default=False,
            help=_('Show default quotas for <project>')
        )
        return parser

    def _get_project(self, parsed_args):
        if parsed_args.project is not None:
            identity_client = self.app.client_manager.identity
            project = utils.find_resource(
                identity_client.projects,
                parsed_args.project,
            ).id
        elif self.app.client_manager.auth_ref:
            # Get the project from the current auth
            project = self.app.client_manager.auth_ref.project_id
        else:
            project = None
        return project

    def get_compute_volume_quota(self, client, parsed_args):
        try:
            if parsed_args.quota_class:
                quota = client.quota_classes.get(parsed_args.project)
            else:
                project = self._get_project(parsed_args)
                if parsed_args.default:
                    quota = client.quotas.defaults(project)
                else:
                    quota = client.quotas.get(project)
        except Exception as e:
            if type(e).__name__ == 'EndpointNotFound':
                return {}
            else:
                raise
        return quota._info

    def get_network_quota(self, parsed_args):
        if parsed_args.quota_class:
            return {}
        if self.app.client_manager.is_network_endpoint_enabled():
            project = self._get_project(parsed_args)
            client = self.app.client_manager.network
            if parsed_args.default:
                # TODO(dtroyer): Remove the top of this if block once the
                #                fixed SDK QuotaDefault class is the minimum
                #                required version.  This is expected to be
                #                SDK release 0.9.13
                if hasattr(_quota.QuotaDefault, 'project'):
                    # hack 0.9.11+
                    quotadef_obj = client._get_resource(
                        _quota.QuotaDefault,
                        project,
                    )
                    quotadef_obj.base_path = quotadef_obj.base_path % {
                        'project': project,
                    }
                    try:
                        network_quota = quotadef_obj.get(
                            client.session,
                            requires_id=False,
                        )
                    except sdk_exceptions.NotFoundException as e:
                        raise sdk_exceptions.ResourceNotFound(
                            message="No %s found for %s" %
                                    (_quota.QuotaDefault.__name__, project),
                            details=e.details,
                            response=e.response,
                            request_id=e.request_id,
                            url=e.url,
                            method=e.method,
                            http_status=e.http_status,
                            cause=e.cause,
                        )
                    # end hack-around
                else:
                    network_quota = client.get_quota_default(project)
            else:
                network_quota = client.get_quota(project)
            return network_quota
        else:
            return {}

    def take_action(self, parsed_args):

        compute_client = self.app.client_manager.compute
        volume_client = self.app.client_manager.volume
        # NOTE(dtroyer): These quota API calls do not validate the project
        #                or class arguments and return what appears to be
        #                the default quota values if the project or class
        #                does not exist. If this is determined to be the
        #                intended behaviour of the API we will validate
        #                the argument with Identity ourselves later.
        compute_quota_info = self.get_compute_volume_quota(compute_client,
                                                           parsed_args)
        volume_quota_info = self.get_compute_volume_quota(volume_client,
                                                          parsed_args)
        network_quota_info = self.get_network_quota(parsed_args)
        # NOTE(reedip): Remove the below check once requirement for
        #               Openstack SDK is fixed to version 0.9.12 and above
        if type(network_quota_info) is not dict:
            network_quota_info = network_quota_info.to_dict()

        info = {}
        info.update(compute_quota_info)
        info.update(volume_quota_info)
        info.update(network_quota_info)

        # Map the internal quota names to the external ones
        # COMPUTE_QUOTAS and NETWORK_QUOTAS share floating-ips,
        # secgroup-rules and secgroups as dict value, so when
        # neutron is enabled, quotas of these three resources
        # in nova will be replaced by neutron's.
        for k, v in itertools.chain(
                COMPUTE_QUOTAS.items(), NOVA_NETWORK_QUOTAS.items(),
                VOLUME_QUOTAS.items(), NETWORK_QUOTAS.items()):
            if not k == v and info.get(k):
                info[v] = info[k]
                info.pop(k)

        # Handle project ID special as it only appears in output
        if 'id' in info:
            info['project'] = info.pop('id')

        return zip(*sorted(six.iteritems(info)))