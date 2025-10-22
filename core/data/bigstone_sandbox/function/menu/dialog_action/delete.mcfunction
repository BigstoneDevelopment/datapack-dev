function xolibs:api/playerdata/load
data remove storage bigstone_sandbox:data temp.selected_index

execute store result storage bigstone_sandbox:data temp.selected_index int 1 run scoreboard players get @s bigstone_sandbox.selected_index

function bigstone_sandbox:menu/dialog_action/delete/delete_component_index with storage bigstone_sandbox:data temp

data remove storage bigstone_sandbox:data temp.selected_index

execute as @a run function bigstone_sandbox:components/list/make_private_filtered_list
execute as @a run function bigstone_sandbox:components/list/make_filters_list

function bigstone_sandbox:menu/dialog/component_menu