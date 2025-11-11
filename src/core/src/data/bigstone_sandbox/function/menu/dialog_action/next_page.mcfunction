function xolibs:api/playerdata/load
data remove storage bigstone_sandbox:data temp.page_count
scoreboard players reset page_count bigstone_sandbox.temp

execute store result score page_count bigstone_sandbox.temp if data storage bigstone_sandbox:playerdata storage.bigstone_sandbox.list.filtered[]
scoreboard players operation page_count bigstone_sandbox.temp /= #100 consts

scoreboard players add @s bigstone_sandbox.loaded_index 1

execute if score @s bigstone_sandbox.loaded_index > page_count bigstone_sandbox.temp run scoreboard players set @s bigstone_sandbox.loaded_index 0

function bigstone_sandbox:list/make_private_loaded_list
function bigstone_sandbox:menu/dialog/component_menu

data remove storage bigstone_sandbox:data temp.page_count
scoreboard players reset page_count bigstone_sandbox.temp
