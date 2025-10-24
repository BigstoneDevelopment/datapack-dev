function xolibs:api/playerdata/load
data remove storage bigstone_sandbox:data temp.selected_index
data remove storage bigstone_sandbox:data temp.component_uuid

execute store result storage bigstone_sandbox:data temp.selected_index int 1 run scoreboard players get @s bigstone_sandbox.selected_index

function bigstone_sandbox:menu/dialog_action/delete/get_component_uuid with storage bigstone_sandbox:data temp
function bigstone_sandbox:menu/dialog_action/delete/delete_component with storage bigstone_sandbox:data temp

function bigstone_sandbox:list/make_filters_list
execute as @a run function bigstone_sandbox:list/make_private_filtered_list

function bigstone_sandbox:menu/dialog/component_menu

data remove storage bigstone_sandbox:data temp.selected_index
data remove storage bigstone_sandbox:data temp.component_uuid