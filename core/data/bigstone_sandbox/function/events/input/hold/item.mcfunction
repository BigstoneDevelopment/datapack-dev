#run when target item in hand

execute unless entity @s[tag=bigstone_sandbox.placement_highlight] run return fail
#if item is not equipped exit function
execute unless predicate bigstone_sandbox:item_detect/is_item run return fail
    #reset function and enable posthold process
    advancement revoke @s only bigstone_sandbox:item_detect/posthold
    advancement revoke @s only bigstone_sandbox:item_detect/inactive_in_offhand
    advancement revoke @s only bigstone_sandbox:item_detect/hold
    advancement revoke @s only bigstone_sandbox:item_detect/active_in_offhand

    advancement revoke @s only bigstone_sandbox:item_detect/place

    #raycast
    execute anchored eyes positioned ^ ^ ^ \
        run function #bs.raycast:run {with:{max_distance:72}}
    execute store result score #rayhit bigstone_sandbox.temp run data get storage bs:out raycast.hit_point
    #exit if cast failed and kill highlight
    execute if score #rayhit bigstone_sandbox.temp matches 0 run return run execute if entity @s[tag=highlightMode] run function bigstone_sandbox:events/input/post_hold/item
    
    #snap to grid at corner for each of the axes (16x16x16)
    #x axes
    execute store result storage bigstone_sandbox:data raycast.Data.x int 16 \
        run data get storage bs:out raycast.targeted_block[0] 0.0625
    #y axes
    execute store result storage bigstone_sandbox:data raycast.Data.y int 16 \
        run data get storage bs:out raycast.targeted_block[1] 0.0625
    #z axes
    execute store result storage bigstone_sandbox:data raycast.Data.z int 16 \
        run data get storage bs:out raycast.targeted_block[2] 0.0625

    #offset block placement if holding saveditem
    execute if predicate bigstone_sandbox:item_detect/mainhand/is_placeitem run function bigstone_sandbox:grid/cast_offset
    #offset if only offhand saved item
    execute \
        unless predicate bigstone_sandbox:item_detect/mainhand/is_item \
        if predicate bigstone_sandbox:item_detect/offhand/is_placeitem \
            run function bigstone_sandbox:grid/cast_offset

    #get last location of cast Position
    execute store result storage bigstone_sandbox:data raycast.temp.Data.x int 1 run scoreboard players get @s bigstone_sandbox.last_pos.x
    execute store result storage bigstone_sandbox:data raycast.temp.Data.y int 1 run scoreboard players get @s bigstone_sandbox.last_pos.y
    execute store result storage bigstone_sandbox:data raycast.temp.Data.z int 1 run scoreboard players get @s bigstone_sandbox.last_pos.z
    #run to test if there are any changes
    execute store success score #raycast.Changed.x bigstone_sandbox.temp \
        run data modify storage bigstone_sandbox:data raycast.temp.Data.x set from storage bigstone_sandbox:data raycast.Data.x
    execute store success score #raycast.Changed.y bigstone_sandbox.temp \
        run data modify storage bigstone_sandbox:data raycast.temp.Data.y set from storage bigstone_sandbox:data raycast.Data.y
    execute store success score #raycast.Changed.z bigstone_sandbox.temp \
        run data modify storage bigstone_sandbox:data raycast.temp.Data.z set from storage bigstone_sandbox:data raycast.Data.z

    #update last location of cast Position
    execute store result score @s bigstone_sandbox.last_pos.x run data get storage bigstone_sandbox:data raycast.temp.Data.x
    execute store result score @s bigstone_sandbox.last_pos.y run data get storage bigstone_sandbox:data raycast.temp.Data.y
    execute store result score @s bigstone_sandbox.last_pos.z run data get storage bigstone_sandbox:data raycast.temp.Data.z

    #update selection mode id
    function bigstone_sandbox:events/input/hold/sub/highlight_hand
    #cancel operation if no change detected
    #this test doesn't test if blocks changed only if selection type changed or placement changed
    execute \
        if score #raycast.Changed.x bigstone_sandbox.temp matches 0 \
        if score #raycast.Changed.y bigstone_sandbox.temp matches 0 \
        if score #raycast.Changed.z bigstone_sandbox.temp matches 0 \
        if score @s bigstone_sandbox.cast_mode = #cast_mode bigstone_sandbox.temp run return fail
            #run function to display highlight mesh according to item type
            function bigstone_sandbox:events/input/hold/update_highlight with storage bigstone_sandbox:data raycast.Data





#for debugging use
#tellraw @a {"storage":"bigstone_sandbox","nbt":"raycast"}