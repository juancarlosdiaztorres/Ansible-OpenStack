module Test_libvirtd_libxl =
  let conf = "autoballoon = 1
lock_manager = \"lockd\"
keepalive_interval = 5
keepalive_count = 5
"

   test Libvirtd_libxl.lns get conf =
{ "autoballoon" = "1" }
{ "lock_manager" = "lockd" }
{ "keepalive_interval" = "5" }
{ "keepalive_count" = "5" }
