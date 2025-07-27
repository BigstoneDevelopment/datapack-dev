#make sound wow it makes sound aaaaaa
$execute positioned $(x) $(y) $(z) run playsound minecraft:block.stone.break block @a ~8 ~8 ~8 10.0

#store count into component ID
execute store result storage bigstone_sandbox component.ID_0 int 1 \
    run scoreboard players get #component_ID_count_0 bigstone_sandbox

execute store result storage bigstone_sandbox component.ID_1 int 1 \
    run scoreboard players get #component_ID_count_1 bigstone_sandbox

#iterate count and loop
execute if score #component_ID_count_0 bigstone_sandbox matches -1 \
    run scoreboard players add #component_ID_count_1 bigstone_sandbox 1
scoreboard players add #component_ID_count_0 bigstone_sandbox 1

#run save structure function
$execute positioned $(x) $(y) $(z) run function bigstone_sandbox:structures/save_structure with storage bigstone_sandbox component
$execute positioned $(x) $(y) $(z) run fill ~ ~ ~ ~15 ~15 ~15 air strict
#$execute positioned $(x) $(y) $(z) run fill ~ ~ ~ ~15 ~15 ~15 stone strict
#$execute positioned $(x) $(y) $(z) run fill ~ ~ ~ ~15 ~15 ~15 air replace