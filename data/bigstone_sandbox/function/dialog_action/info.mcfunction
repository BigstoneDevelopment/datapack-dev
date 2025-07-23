function xolibs:api/playerdata/load
data remove storage bigstone_sandbox:components temp

execute store result score @s bigstone_sandbox.selected_index run scoreboard players remove @s bigstone_sandbox_menu 1000

data remove storage bigstone_sandbox:components temp

function bigstone_sandbox:dialog/component_info