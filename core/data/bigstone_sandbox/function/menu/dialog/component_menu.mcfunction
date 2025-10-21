function xolibs:api/playerdata/load
data remove storage bigstone_sandbox:data temp.menu_items
data remove storage bigstone_sandbox:data temp.macros
data remove storage bigstone_sandbox:data temp.body
scoreboard players reset item_index bigstone_sandbox.temp

data modify storage bigstone_sandbox:data temp.menu_items set from storage xolibs:playerdata storage.bigstone_sandbox.list.loaded
data modify storage bigstone_sandbox:data temp.macros.item_index set value 0
scoreboard players set item_index bigstone_sandbox.temp 0
function bigstone_sandbox:menu/dialog/component_menu/add_items_loop
function bigstone_sandbox:menu/dialog/component_menu/body_init

function bigstone_sandbox:menu/dialog/component_menu/run_dialog with storage bigstone_sandbox:data temp
data remove storage bigstone_sandbox:data temp.menu_items
data remove storage bigstone_sandbox:data temp.macros
data remove storage bigstone_sandbox:data temp.body
scoreboard players reset item_index bigstone_sandbox.temp