execute if data storage bigstone_sandbox:data settings{"add":0b} run tellraw @s ["",{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.public_import_disabled","fallback":"Public Importing has been disabled by an OP.","color":"yellow"}]
execute if data storage bigstone_sandbox:data settings{"add":0b} run return fail

data remove storage bigstone_sandbox:data import

data modify storage bigstone_sandbox:data import set from entity @s SelectedItem.components."minecraft:custom_data".bigstone_sandbox.source
function bigstone_sandbox:components/list/add_public_item

data remove storage bigstone_sandbox:data import

function bigstone_sandbox:menu/dialog/component_menu