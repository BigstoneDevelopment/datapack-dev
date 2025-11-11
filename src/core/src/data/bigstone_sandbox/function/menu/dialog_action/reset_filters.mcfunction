function xolibs:api/playerdata/load

data modify storage bigstone_sandbox:playerdata storage.bigstone_sandbox.list.filters[] merge value \
{ \
  "include": false, \
  "exclude": false \
}

execute if entity @s[tag=bigstone_sandbox.last_filter_menu.port] run return run function bigstone_sandbox:menu/dialog/filter_ports
execute if entity @s[tag=bigstone_sandbox.last_filter_menu.creator] run return run function bigstone_sandbox:menu/dialog/filter_creators
return run function bigstone_sandbox:menu/dialog/filter_tags