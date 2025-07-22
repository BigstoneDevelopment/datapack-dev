#run when target item in hand
#if item is not equipped exit function
execute unless entity @s[predicate=bigstone_sandbox:item_detect/is_item] run return fail
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
        execute store result storage bigstone_sandbox raycast.Position.x int 16 \
            run data get storage bs:out raycast.targeted_block[0] 0.0625
        #y axes
        execute store result storage bigstone_sandbox raycast.Position.y int 16 \
            run data get storage bs:out raycast.targeted_block[1] 0.0625
        #z axes
        execute store result storage bigstone_sandbox raycast.Position.z int 16 \
            run data get storage bs:out raycast.targeted_block[2] 0.0625


        #offset block placement if holding saveditem
        execute if entity @s[predicate=bigstone_sandbox:item_detect/is_saveditem] run function bigstone_sandbox:grid/cast_offset

        #run functions to display highlight mesh according to item type
        execute if entity @s[predicate=bigstone_sandbox:item_detect/is_saveditem] \
            run function bigstone_sandbox:events/input/use/paste with storage bigstone_sandbox raycast.Position

        execute \
            if entity @s[predicate=bigstone_sandbox:item_detect/is_selectitem] \
            run function bigstone_sandbox:events/input/use/save with storage bigstone_sandbox raycast.Position


#for debugging use
#tellraw @a {"storage":"bigstone_sandbox","nbt":"raycast"}