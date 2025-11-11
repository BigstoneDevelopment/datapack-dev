execute if data storage bigstone_sandbox:data settings{"private":0b} run tellraw @s ["",{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.private_components_disabled","fallback":"Private components has been disabled by an OP.","color":"yellow"}]
execute if data storage bigstone_sandbox:data settings{"private":0b} run function bigstone_sandbox:menu/dialog/admin_import
execute if data storage bigstone_sandbox:data settings{"private":0b} run return fail

# store list
data remove storage bigstone_sandbox:data temp.import_list

$data modify storage bigstone_sandbox:data temp.import_list set value $(item_data)

#execute if data storage bigstone_sandbox:data settings{"import_logs":1b} run tellraw @s ["",{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.import_list_stored","fallback":"Import list stored in temporary data.","color":"gray"}]

# process loop
execute store result score @s bigstone_sandbox.temp.import_total run data get storage bigstone_sandbox:data temp.import_list
scoreboard players set @s bigstone_sandbox.temp.import_done 0
function bigstone_sandbox:menu/dialog_action/import/private/process_step

#execute if data storage bigstone_sandbox:data settings{"import_logs":1b} run tellraw @s ["",{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.import_list_cleanup","fallback":"Cleaning up temporary import data..","color":"gray"}]

# cleanup
data remove storage bigstone_sandbox:data import
data remove storage bigstone_sandbox:data temp.import_list
scoreboard players reset @s bigstone_sandbox.temp.import_total
scoreboard players reset @s bigstone_sandbox.temp.import_left
scoreboard players reset @s bigstone_sandbox.temp.import_done
scoreboard players reset @s bigstone_sandbox.temp.import_percent

function bigstone_sandbox:menu/dialog/component_menu