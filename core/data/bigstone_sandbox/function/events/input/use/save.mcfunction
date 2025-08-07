#store count into component ID
execute store result storage bigstone_sandbox:data component.ID_0 int 1 \
    run scoreboard players get #component_ID_count_0 bigstone_sandbox.temp

execute store result storage bigstone_sandbox:data component.ID_1 int 1 \
    run scoreboard players get #component_ID_count_1 bigstone_sandbox.temp

#iterate count and loop
execute if score #component_ID_count_0 bigstone_sandbox matches -1 \
    run scoreboard players add #component_ID_count_1 bigstone_sandbox.temp 1
scoreboard players add #component_ID_count_0 bigstone_sandbox.temp 1

#run save structure function
$execute positioned $(x) $(y) $(z) run function bigstone_sandbox:events/input/use/structures/save_structure with storage bigstone_sandbox:data component