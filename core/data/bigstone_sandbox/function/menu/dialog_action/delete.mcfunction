function xolibs:api/playerdata/load
data remove storage bigstone_sandbox:data temp.selected_index
data remove storage bigstone_sandbox:data temp.component_uuid
data remove storage bigstone_sandbox:data temp.player_uuid
data remove storage bigstone_sandbox:data temp.component_is_public

execute store result storage bigstone_sandbox:data temp.selected_index int 1 run scoreboard players get @s bigstone_sandbox.selected_index

function bigstone_sandbox:menu/dialog_action/delete/get_component_uuid with storage bigstone_sandbox:data temp
function bigstone_sandbox:menu/dialog_action/delete/get_component_visibility with storage bigstone_sandbox:data temp

execute unless data storage bigstone_sandbox:data settings{"delete":1b} if data storage bigstone_sandbox:data temp{"component_is_public":1b} run tellraw @s ["",{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.deleting_public_components_disabled","fallback":"Deleting public components has been disabled by an OP.","color":"yellow"}]
execute unless data storage bigstone_sandbox:data settings{"delete":1b} if data storage bigstone_sandbox:data temp{"component_is_public":1b} run return fail

data modify storage bigstone_sandbox:data temp.player_uuid set from entity @s UUID
function bigstone_sandbox:menu/dialog_action/delete/delete_component with storage bigstone_sandbox:data temp

function bigstone_sandbox:list/make_filters_list
execute as @a run function bigstone_sandbox:list/make_private_filtered_list

function bigstone_sandbox:menu/dialog_action/delete/refresh_menu with storage bigstone_sandbox:data temp

data remove storage bigstone_sandbox:data temp.selected_index
data remove storage bigstone_sandbox:data temp.component_uuid
data remove storage bigstone_sandbox:data temp.player_uuid
data remove storage bigstone_sandbox:data temp.component_is_public