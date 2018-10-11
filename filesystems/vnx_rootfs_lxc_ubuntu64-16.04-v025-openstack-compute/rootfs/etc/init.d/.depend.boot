TARGETS = console-setup resolvconf mountkernfs.sh ebtables hostname.sh x11-common udev mountdevsubfs.sh procps hwclock.sh lvm2 checkroot.sh networking iscsid urandom open-iscsi mountnfs-bootclean.sh mountnfs.sh bootmisc.sh mountall.sh checkfs.sh checkroot-bootclean.sh mountall-bootclean.sh kmod
INTERACTIVE = console-setup udev checkroot.sh checkfs.sh
udev: mountkernfs.sh
mountdevsubfs.sh: mountkernfs.sh udev
procps: mountkernfs.sh udev
hwclock.sh: mountdevsubfs.sh
lvm2: mountdevsubfs.sh udev
checkroot.sh: hwclock.sh mountdevsubfs.sh hostname.sh
networking: resolvconf mountkernfs.sh urandom procps
iscsid: networking
urandom: hwclock.sh
open-iscsi: networking iscsid
mountnfs-bootclean.sh: mountnfs.sh
mountnfs.sh: networking
bootmisc.sh: mountnfs-bootclean.sh udev mountall-bootclean.sh checkroot-bootclean.sh
mountall.sh: checkfs.sh checkroot-bootclean.sh lvm2
checkfs.sh: checkroot.sh lvm2
checkroot-bootclean.sh: checkroot.sh
mountall-bootclean.sh: mountall.sh
kmod: checkroot.sh
