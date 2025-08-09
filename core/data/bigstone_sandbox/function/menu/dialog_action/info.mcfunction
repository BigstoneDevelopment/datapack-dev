function xolibs:api/playerdata/load
data remove storage bigstone_sandbox:data temp

execute store result score @s bigstone_sandbox.selected_index run scoreboard players remove @s bigstone_sandbox_menu 1000

data remove storage bigstone_sandbox:data temp

function bigstone_sandbox:menu/dialog/component_info