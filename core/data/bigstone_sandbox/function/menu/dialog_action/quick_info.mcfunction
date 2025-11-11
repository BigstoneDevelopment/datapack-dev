function xolibs:api/playerdata/load

#sets the selected index to the item that was chosen
execute store result score @s bigstone_sandbox.selected_index run scoreboard players remove @s bigstone_sandbox_menu 1000

function bigstone_sandbox:menu/dialog/component_info