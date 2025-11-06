function bs.xolibs:api/playerdata/load
data remove storage bigstone_sandbox:data temp.selected_index
data remove storage bigstone_sandbox:data temp.item_at_index

# used for the "add to inventory" in component list, sets the selected index to the item that was chosen
execute store result score @s bigstone_sandbox.selected_index run scoreboard players remove @s bigstone_sandbox_menu 2000

execute store result storage bigstone_sandbox:data temp.selected_index int 1 run scoreboard players get @s bigstone_sandbox.selected_index

function bigstone_sandbox:menu/dialog_action/give/get_item_data with storage bigstone_sandbox:data temp
function bigstone_sandbox:menu/dialog_action/give/give_item with storage bigstone_sandbox:data temp.item_at_index

data remove storage bigstone_sandbox:data temp.selected_index
data remove storage bigstone_sandbox:data temp.item_at_index