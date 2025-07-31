tag @s add highlightMode

            scoreboard players set #isEmptyChunk bigstone_sandbox 1
            execute if predicate bigstone_sandbox:item_detect/mainhand/is_placeitem run function bigstone_sandbox:grid/check_empty_chunk_block with storage bigstone_sandbox raycast.Data
            execute if predicate bigstone_sandbox:item_detect/offhand/is_placeitem unless predicate bigstone_sandbox:item_detect/offhand/is_item run function bigstone_sandbox:grid/check_empty_chunk_block with storage bigstone_sandbox raycast.Data
            #render error highlight
            execute \
                if score #isEmptyChunk bigstone_sandbox matches 0 \
                    run scoreboard players set #cast_mode bigstone_sandbox 2
            
            #run function to display highlight mesh according to item type
            function bigstone_sandbox:events/input/hold/update_highlight with storage bigstone_sandbox raycast.Data