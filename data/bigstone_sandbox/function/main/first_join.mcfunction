function xolibs:api/playerdata/load

data modify storage xolibs:playerdata player.bigstone_sandbox merge value {filter: {include: {}, exclude: {}}}
scoreboard players set @s bigstone_sandbox.loaded_index 0
function bigstone_sandbox:list/make_filtered_list