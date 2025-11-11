data remove storage bigstone_sandbox:data temp.filter
data remove storage bigstone_sandbox:data temp.index
scoreboard players reset * bigstone_sandbox.temp
function xolibs:api/playerdata/load

execute store result storage bigstone_sandbox:data temp.index int 1 run scoreboard players remove @s bigstone_sandbox_menu 100000
function bigstone_sandbox:menu/dialog_action/filter/get_filter_at_index with storage bigstone_sandbox:data temp

execute if data storage bigstone_sandbox:data temp.filter{"include":false, "exclude":true} run data modify storage bigstone_sandbox:data temp.filter merge value {"include":true, "exclude":true}
execute if data storage bigstone_sandbox:data temp.filter{"include":true, "exclude":false} run data modify storage bigstone_sandbox:data temp.filter merge value {"include":false, "exclude":true}
execute if data storage bigstone_sandbox:data temp.filter{"include":false, "exclude":false} run data modify storage bigstone_sandbox:data temp.filter merge value {"include":true, "exclude":false}
execute if data storage bigstone_sandbox:data temp.filter{"include":true, "exclude":true} run data modify storage bigstone_sandbox:data temp.filter merge value {"include":false, "exclude":false}

function bigstone_sandbox:menu/dialog_action/filter/update_filter_at_index with storage bigstone_sandbox:data temp

data remove storage bigstone_sandbox:data temp.filter
data remove storage bigstone_sandbox:data temp.index
scoreboard players reset * bigstone_sandbox.temp

execute if entity @s[tag=bigstone_sandbox.last_filter_menu.port] run return run function bigstone_sandbox:menu/dialog/filter_ports
execute if entity @s[tag=bigstone_sandbox.last_filter_menu.creator] run return run function bigstone_sandbox:menu/dialog/filter_creators
return run function bigstone_sandbox:menu/dialog/filter_tags