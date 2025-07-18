function xolibs:api/playerdata/load
data remove storage bigstone_sandbox:components temp

execute store result storage bigstone_sandbox:components temp.selected_index int 1 run scoreboard players remove @s bigstone_sandbox_menu 1000
function bigstone_sandbox:dialog_action/info/get_item_data with storage bigstone_sandbox:components temp

data remove storage bigstone_sandbox:components temp

dialog show @s bigstone_sandbox:component_info