#raycast
execute anchored eyes positioned ^ ^ ^ \
    run function #bs.raycast:run {with:{max_distance:72}}
execute store result score #rayhit bigstone_sandbox.temp run data get storage bs:out raycast.hit_point
#exit if cast failed
execute if score #rayhit bigstone_sandbox.temp matches 0 run return fail
    
    #snap to grid at corner for each of the axes (16x16x16)
    #x axes
    execute store result storage bigstone_sandbox:data temp.raycast.Data.x int 16 \
        run data get storage bs:out raycast.targeted_block[0] 0.0625
    #y axes
    execute store result storage bigstone_sandbox:data temp.raycast.Data.y int 16 \
        run data get storage bs:out raycast.targeted_block[1] 0.0625
    #z axes
    execute store result storage bigstone_sandbox:data temp.raycast.Data.z int 16 \
        run data get storage bs:out raycast.targeted_block[2] 0.0625


    #offset block placement if holding saveditem
    execute if predicate bigstone_sandbox:item_detect/mainhand/is_placeitem run function bigstone_sandbox:placements/grid/cast_offset
    #offset if only offhand saved item
    execute \
        unless predicate bigstone_sandbox:item_detect/mainhand/is_item \
        if predicate bigstone_sandbox:item_detect/offhand/is_placeitem \
            run function bigstone_sandbox:placements/grid/cast_offset
        
    #check empty chunk
    function bigstone_sandbox:placements/grid/check_empty_chunk_block with storage bigstone_sandbox:data temp.raycast.Data
        execute \
            if score #chunk_contain_blocks bigstone_sandbox.temp matches 0 \
            unless predicate bigstone_sandbox:item_detect/mainhand/is_storeitem \
            unless entity @s[predicate=bigstone_sandbox:item_detect/offhand/is_storeitem,predicate=!bigstone_sandbox:item_detect/mainhand/is_item] \
            unless predicate bigstone_sandbox:item_detect/mainhand/is_deleteitem \
            unless entity @s[predicate=bigstone_sandbox:item_detect/offhand/is_deleteitem,predicate=!bigstone_sandbox:item_detect/mainhand/is_item] \
            run return fail


    #prepare data from item
    #mainhand optimize all of this later
    execute if entity @s[predicate=bigstone_sandbox:item_detect/mainhand/is_placeitem] \
        run data modify storage bigstone_sandbox:data temp.raycast.Data.ID \
            set from entity @s SelectedItem.components."minecraft:custom_data".bigstone_sandbox.struc.ID

    execute if entity @s[predicate=bigstone_sandbox:item_detect/mainhand/is_placeitem] \
        run data modify storage bigstone_sandbox:data temp.raycast.Data.ID_0 \
            set from entity @s SelectedItem.components."minecraft:custom_data".bigstone_sandbox.struc.ID[0]
    execute if entity @s[predicate=bigstone_sandbox:item_detect/mainhand/is_placeitem] \
        run data modify storage bigstone_sandbox:data temp.raycast.Data.ID_1 \
            set from entity @s SelectedItem.components."minecraft:custom_data".bigstone_sandbox.struc.ID[1]
    execute if entity @s[predicate=bigstone_sandbox:item_detect/mainhand/is_placeitem] \
        run data modify storage bigstone_sandbox:data temp.raycast.Data.ID_2 \
            set from entity @s SelectedItem.components."minecraft:custom_data".bigstone_sandbox.struc.ID[2]
    execute if entity @s[predicate=bigstone_sandbox:item_detect/mainhand/is_placeitem] \
        run data modify storage bigstone_sandbox:data temp.raycast.Data.ID_3 \
            set from entity @s SelectedItem.components."minecraft:custom_data".bigstone_sandbox.struc.ID[3]
    #offhand
    execute if entity @s[predicate=bigstone_sandbox:item_detect/offhand/is_placeitem,predicate=!bigstone_sandbox:item_detect/mainhand/is_placeitem] \
        run data modify storage bigstone_sandbox:data temp.raycast.Data.ID \
            set from entity @s equipment.offhand.components."minecraft:custom_data".bigstone_sandbox.struc.ID
    
    execute if entity @s[predicate=bigstone_sandbox:item_detect/offhand/is_placeitem,predicate=!bigstone_sandbox:item_detect/mainhand/is_placeitem] \
        run data modify storage bigstone_sandbox:data temp.raycast.Data.ID_0 \
            set from entity @s equipment.offhand.components."minecraft:custom_data".bigstone_sandbox.struc.ID[0]
    execute if entity @s[predicate=bigstone_sandbox:item_detect/offhand/is_placeitem,predicate=!bigstone_sandbox:item_detect/mainhand/is_placeitem] \
        run data modify storage bigstone_sandbox:data temp.raycast.Data.ID_1 \
            set from entity @s equipment.offhand.components."minecraft:custom_data".bigstone_sandbox.struc.ID[1]
    execute if entity @s[predicate=bigstone_sandbox:item_detect/offhand/is_placeitem,predicate=!bigstone_sandbox:item_detect/mainhand/is_placeitem] \
        run data modify storage bigstone_sandbox:data temp.raycast.Data.ID_2 \
            set from entity @s equipment.offhand.components."minecraft:custom_data".bigstone_sandbox.struc.ID[2]
    execute if entity @s[predicate=bigstone_sandbox:item_detect/offhand/is_placeitem,predicate=!bigstone_sandbox:item_detect/mainhand/is_placeitem] \
        run data modify storage bigstone_sandbox:data temp.raycast.Data.ID_3 \
            set from entity @s equipment.offhand.components."minecraft:custom_data".bigstone_sandbox.struc.ID[3]

    scoreboard players set #weapon_slot_id bigstone_sandbox.temp 0
    #store component data in a temporary read only location
    execute if predicate bigstone_sandbox:item_detect/mainhand/is_item \
        run data modify storage bigstone_sandbox:data temp.item_use_effect set from entity @s SelectedItem.components."minecraft:custom_data".item_use_effect
    execute if predicate bigstone_sandbox:item_detect/mainhand/is_item \
        run scoreboard players set #weapon_slot_id bigstone_sandbox.temp 1

    execute unless predicate bigstone_sandbox:item_detect/mainhand/is_item \
        if predicate bigstone_sandbox:item_detect/offhand/is_item \
        run data modify storage bigstone_sandbox:data temp.item_use_effect set from entity @s equipment.offhand.components."minecraft:custom_data".item_use_effect
    execute unless predicate bigstone_sandbox:item_detect/mainhand/is_item \
        if predicate bigstone_sandbox:item_detect/offhand/is_item \
        run scoreboard players set #weapon_slot_id bigstone_sandbox.temp 2

    #run functions to execute placement/save
    function bigstone_sandbox:placements/item/use/sub/store_hand
    function bigstone_sandbox:placements/item/use/sub/place_hand
    function bigstone_sandbox:placements/item/use/sub/delete_hand
    function bigstone_sandbox:placements/item/use/sub/creative_delete_item_hand
    function bigstone_sandbox:placements/item/use/sub/collect_hand
    
    #clear temp data
    data remove storage bigstone_sandbox:data temp.item_use_effect
    data remove storage bigstone_sandbox:data temp.raycast
    
#for debugging use
#tellraw @a {"storage":"bigstone_sandbox","nbt":"raycast"}