#run when target item in hand

#if item is not equipped exit function
execute unless entity @s[predicate=bigstone_sandbox:item_detect/is_item] run return fail
    #reset function and enable posthold process
    advancement revoke @s only bigstone_sandbox:item_detect/hold
    advancement revoke @s only bigstone_sandbox:item_detect/posthold

    #raycast
    execute anchored eyes positioned ^ ^ ^ \
        run function #bs.raycast:run {with:{max_distance:72}}
    execute store result score #rayhit bigstone_sandbox run data get storage bs:out raycast.hit_point
    #exit if cast failed and kill highlight
    execute if score #rayhit bigstone_sandbox matches 0 run return run execute if entity @s[tag=highlightMode] run function bigstone_sandbox:events/input/post_hold/item
    
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
    execute if entity @s[predicate=bigstone_sandbox:item_detect/is_saveditem] run function bigstone_sandbox:grid/cast_offset

    #run to test if there are any changes
    execute store success score #raycast.Changed.x bigstone_sandbox \
        run data modify storage bigstone_sandbox raycast.temp.Data.x set from storage bigstone_sandbox raycast.Data.x
    execute store success score #raycast.Changed.y bigstone_sandbox \
        run data modify storage bigstone_sandbox raycast.temp.Data.y set from storage bigstone_sandbox raycast.Data.y
    execute store success score #raycast.Changed.z bigstone_sandbox \
        run data modify storage bigstone_sandbox raycast.temp.Data.z set from storage bigstone_sandbox raycast.Data.z

    #cancel operation if no change detected
    execute \
        if score #raycast.Changed.x bigstone_sandbox matches 0 \
        if score #raycast.Changed.y bigstone_sandbox matches 0 \
        if score #raycast.Changed.z bigstone_sandbox matches 0 \
            run return fail
            #run functions to display highlight mesh according to item type
            tag @s add highlightMode
            execute if entity @s[predicate=bigstone_sandbox:item_detect/is_saveditem] \
                run function bigstone_sandbox:events/input/hold/paste with storage bigstone_sandbox raycast.Data

            execute \
                if entity @s[predicate=bigstone_sandbox:item_detect/is_selectitem] \
                run function bigstone_sandbox:events/input/hold/select with storage bigstone_sandbox raycast.Data


#for debugging use
#tellraw @a {"storage":"bigstone_sandbox","nbt":"raycast"}