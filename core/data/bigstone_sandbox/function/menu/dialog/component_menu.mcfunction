function xolibs:api/playerdata/load
data remove storage bigstone_sandbox:data temp.menu_items
data remove storage bigstone_sandbox:data temp.macros
data remove storage bigstone_sandbox:data temp.body
data remove storage bigstone_sandbox:data temp.components_count
data remove storage bigstone_sandbox:data temp.loaded_index
scoreboard players reset item_index bigstone_sandbox.temp
scoreboard players reset component_count bigstone_sandbox.temp
scoreboard players reset loaded_index bigstone_sandbox.temp
scoreboard players reset selected_index bigstone_sandbox.temp
scoreboard players reset flip_flop bigstone_sandbox.temp

execute store result score component_count bigstone_sandbox.temp \
  if data storage xolibs:playerdata storage.bigstone_sandbox.list.filtered[]
execute store result storage bigstone_sandbox:data temp.components_count int 1 run \
  scoreboard players add component_count bigstone_sandbox.temp 100
scoreboard players remove component_count bigstone_sandbox.temp 100
execute store result score loaded_index bigstone_sandbox.temp run scoreboard players get @s bigstone_sandbox.loaded_index
execute store result storage bigstone_sandbox:data temp.loaded_index int 1 run \
  scoreboard players add loaded_index bigstone_sandbox.temp 1

data modify storage bigstone_sandbox:data temp.menu_items set from storage xolibs:playerdata storage.bigstone_sandbox.list.loaded
data modify storage bigstone_sandbox:data temp.macros.item_index set value 0
scoreboard players set item_index bigstone_sandbox.temp 0
function bigstone_sandbox:menu/dialog/component_menu/add_items_loop
execute if score component_count bigstone_sandbox.temp matches ..100 run function bigstone_sandbox:menu/dialog/component_menu/single_page_body_init
execute if score component_count bigstone_sandbox.temp matches 101.. run function bigstone_sandbox:menu/dialog/component_menu/multi_page_body_init

execute if score component_count bigstone_sandbox.temp matches 101.. run data modify storage bigstone_sandbox:data temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.current_page"}].with[0].text set string storage bigstone_sandbox:data temp.loaded_index
execute if score component_count bigstone_sandbox.temp matches 101.. run data modify storage bigstone_sandbox:data temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.current_page"}].with[1].text set string storage bigstone_sandbox:data temp.components_count 0 -2

function bigstone_sandbox:menu/dialog/component_menu/run_dialog with storage bigstone_sandbox:data temp
data remove storage bigstone_sandbox:data temp.menu_items
data remove storage bigstone_sandbox:data temp.macros
data remove storage bigstone_sandbox:data temp.body
data remove storage bigstone_sandbox:data temp.components_count
data remove storage bigstone_sandbox:data temp.loaded_index
scoreboard players reset item_index bigstone_sandbox.temp
scoreboard players reset component_count bigstone_sandbox.temp
scoreboard players reset loaded_index bigstone_sandbox.temp
scoreboard players reset selected_index bigstone_sandbox.temp
scoreboard players reset flip_flop bigstone_sandbox.temp