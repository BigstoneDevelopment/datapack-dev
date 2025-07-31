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

execute if predicate bigstone_sandbox:item_detect/mainhand/is_storeitem run return run function bigstone_sandbox:structures/item/mainhand with storage bigstone_sandbox component
execute if predicate bigstone_sandbox:item_detect/offhand/is_storeitem run function bigstone_sandbox:structures/item/offhand with storage bigstone_sandbox component