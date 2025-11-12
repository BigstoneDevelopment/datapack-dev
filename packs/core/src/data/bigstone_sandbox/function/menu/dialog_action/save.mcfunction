function xolibs:api/playerdata/load
data remove storage bigstone_sandbox:data temp.selected_index
data remove storage bigstone_sandbox:data temp.component_uuid
data remove storage bigstone_sandbox:data temp.player_uuid

execute store result storage bigstone_sandbox:data temp.selected_index int 1 run scoreboard players get @s bigstone_sandbox.selected_index

function bigstone_sandbox:menu/dialog_action/save/get_component_uuid with storage bigstone_sandbox:data temp
data modify storage bigstone_sandbox:data temp.player_uuid set from entity @s UUID

function bigstone_sandbox:menu/dialog_action/save/save_component with storage bigstone_sandbox:data temp
function bigstone_sandbox:menu/dialog/component_info

data remove storage bigstone_sandbox:data temp.selected_index
data remove storage bigstone_sandbox:data temp.component_uuid
data remove storage bigstone_sandbox:data temp.player_uuid