execute unless data storage bigstone_sandbox:data temp.menu_items[] run return fail
data remove storage bigstone_sandbox:data temp.add_item
data remove storage bigstone_sandbox:data temp.macros

function bigstone_sandbox:dialog/component_menu/add_item_init

execute if data storage bigstone_sandbox:data temp.menu_items[0].data{"public":false} run function bigstone_sandbox:dialog/component_menu/private_icon
execute if data storage bigstone_sandbox:data temp.menu_items[0].data{"public":true} run function bigstone_sandbox:dialog/component_menu/public_icon
execute if data storage bigstone_sandbox:data temp.menu_items[0].data{"public":true, "saved":true} run function bigstone_sandbox:dialog/component_menu/saved_icon

execute store result storage bigstone_sandbox:data temp.macros.item_index_0 int 1 run scoreboard players add item_index bigstone_sandbox.temp 1000
execute store result storage bigstone_sandbox:data temp.macros.item_index_1 int 1 run scoreboard players add item_index bigstone_sandbox.temp 1000
function bigstone_sandbox:dialog/component_menu/add_item_macros with storage bigstone_sandbox:data temp.macros
scoreboard players remove item_index bigstone_sandbox.temp 2000

data modify storage bigstone_sandbox:data temp.add_item.item set from storage bigstone_sandbox:data temp.menu_items[0].item
data modify storage bigstone_sandbox:data temp.add_item.description.contents[6] set from storage bigstone_sandbox:data temp.menu_items[0].source.component_name

data modify storage bigstone_sandbox:data temp.body append from storage bigstone_sandbox:data temp.add_item
execute store result storage bigstone_sandbox:data temp.macros.item_index int 1 run scoreboard players add item_index bigstone_sandbox.temp 1

data remove storage bigstone_sandbox:data temp.menu_items[0]
function bigstone_sandbox:dialog/component_menu/add_items_loop