execute unless data storage bigstone_sandbox:components temp.menu_items[] run return fail
data remove storage bigstone_sandbox:components temp.add_item
data remove storage bigstone_sandbox:components temp.macros

function bigstone_sandbox:dialog/component_menu/add_item_init

execute if data storage bigstone_sandbox:components temp.menu_items[0].private run function bigstone_sandbox:dialog/component_menu/private_icon
execute if data storage bigstone_sandbox:components temp.menu_items[0].public run function bigstone_sandbox:dialog/component_menu/public_icon

execute store result storage bigstone_sandbox:components temp.macros.item_index_0 int 1 run scoreboard players add item_index bigstone_sandbox.temp 1000
execute store result storage bigstone_sandbox:components temp.macros.item_index_1 int 1 run scoreboard players add item_index bigstone_sandbox.temp 1000
function bigstone_sandbox:dialog/component_menu/add_item_macros with storage bigstone_sandbox:components temp.macros
scoreboard players remove item_index bigstone_sandbox.temp 2000

data modify storage bigstone_sandbox:components temp.add_item.item set from storage bigstone_sandbox:components temp.menu_items[0].item
data modify storage bigstone_sandbox:components temp.add_item.description.contents[6] set from storage bigstone_sandbox:components temp.menu_items[0].data.component_name

data modify storage bigstone_sandbox:components temp.body append from storage bigstone_sandbox:components temp.add_item
execute store result storage bigstone_sandbox:components temp.macros.item_index int 1 run scoreboard players add item_index bigstone_sandbox.temp 1

data remove storage bigstone_sandbox:components temp.menu_items[0]
function bigstone_sandbox:dialog/component_menu/add_items_loop