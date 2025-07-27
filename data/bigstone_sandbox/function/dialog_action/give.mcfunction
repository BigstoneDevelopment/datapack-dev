function xolibs:api/playerdata/load
data remove storage bigstone_sandbox:components temp

execute store result storage bigstone_sandbox:components temp.selected_index int 1 run scoreboard players remove @s bigstone_sandbox_menu 2000
function bigstone_sandbox:dialog_action/give/get_item_data with storage bigstone_sandbox:components temp
function bigstone_sandbox:dialog_action/give/give_item with storage bigstone_sandbox:components temp.item_at_index

data remove storage bigstone_sandbox:components temp