#run when target item in hand
#if item is not equipped exit function
execute unless entity @s[predicate=bigstone_sandbox:item_detect/is_item] run return fail
    say use
    #reset function and enable posthold process
    advancement revoke @s only bigstone_sandbox:item_detect/place

    #raycast
    execute anchored eyes positioned ^ ^ ^ \
        run function #bs.raycast:run {with:{max_distance:72}}
    execute store result score #rayhit bigstone_sandbox run data get storage bs:out raycast.hit_point
    #exit if cast failed
    execute if score #rayhit bigstone_sandbox matches 0 run return fail
        
        #snap to grid at corner for each of the axes (16x16x16)
        #x axes
        execute store result storage bigstone_sandbox raycast.Data.x int 16 \
            run data get storage bs:out raycast.targeted_block[0] 0.0625
        #y axes
        execute store result storage bigstone_sandbox raycast.Data.y int 16 \
            run data get storage bs:out raycast.targeted_block[1] 0.0625
        #z axes
        execute store result storage bigstone_sandbox raycast.Data.z int 16 \
            run data get storage bs:out raycast.targeted_block[2] 0.0625


        #offset block placement if holding saveditem
        execute if predicate bigstone_sandbox:item_detect/mainhand/is_saveditem run function bigstone_sandbox:grid/cast_offset
        #offset if only offhand saved item
        execute \
            if entity @s[\
                predicate=!bigstone_sandbox:item_detect/mainhand/is_saveditem,\
                predicate=!bigstone_sandbox:item_detect/mainhand/is_selectitem,\
                predicate=bigstone_sandbox:item_detect/offhand/is_saveditem,\
            ] run function bigstone_sandbox:grid/cast_offset
        
        function bigstone_sandbox:grid/check_empty_chunk_block with storage bigstone_sandbox raycast.Data
            execute \
                if score #isEmptyChunk bigstone_sandbox matches 0 \
                unless predicate bigstone_sandbox:item_detect/mainhand/is_selectitem \
                unless entity @s[predicate=bigstone_sandbox:item_detect/offhand/is_selectitem,predicate=!bigstone_sandbox:item_detect/mainhand/is_selectitem] \
                run return fail

        #prepare data from item
        execute if entity @s[predicate=bigstone_sandbox:item_detect/mainhand/is_saveditem] \
            run data modify storage bigstone_sandbox raycast.Data.ID_0 \
                set from entity @s SelectedItem.components."minecraft:custom_data".bigstone_sandbox.struc.ID_0

        execute if entity @s[predicate=bigstone_sandbox:item_detect/mainhand/is_saveditem] \
            run data modify storage bigstone_sandbox raycast.Data.ID_1 \
                set from entity @s SelectedItem.components."minecraft:custom_data".bigstone_sandbox.struc.ID_1

        execute if entity @s[predicate=bigstone_sandbox:item_detect/offhand/is_saveditem,predicate=!bigstone_sandbox:item_detect/mainhand/is_saveditem] \
            run data modify storage bigstone_sandbox raycast.Data.ID_0 \
                set from entity @s equipment.offhand.components."minecraft:custom_data".bigstone_sandbox.struc.ID_0
        execute if entity @s[predicate=bigstone_sandbox:item_detect/offhand/is_saveditem,predicate=!bigstone_sandbox:item_detect/mainhand/is_saveditem] \
            run data modify storage bigstone_sandbox raycast.Data.ID_1 \
                set from entity @s equipment.offhand.components."minecraft:custom_data".bigstone_sandbox.struc.ID_1
        
        #run functions to execute placement/save
        execute if entity @s[predicate=bigstone_sandbox:item_detect/mainhand/is_saveditem] \
            run return run function bigstone_sandbox:events/input/use/paste with storage bigstone_sandbox raycast.Data

        execute \
            if entity @s[predicate=bigstone_sandbox:item_detect/mainhand/is_selectitem] \
            run return run function bigstone_sandbox:events/input/use/save with storage bigstone_sandbox raycast.Data

        #run functions to execute placement/save (offhand)
        execute if entity @s[predicate=bigstone_sandbox:item_detect/offhand/is_saveditem] \
            run return run function bigstone_sandbox:events/input/use/paste with storage bigstone_sandbox raycast.Data

        execute \
            if entity @s[predicate=bigstone_sandbox:item_detect/offhand/is_selectitem] \
            run return run function bigstone_sandbox:events/input/use/save with storage bigstone_sandbox raycast.Data


#for debugging use
#tellraw @a {"storage":"bigstone_sandbox","nbt":"raycast"}