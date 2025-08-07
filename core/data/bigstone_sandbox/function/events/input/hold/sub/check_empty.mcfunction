tag @s add highlightMode

            scoreboard players set #chunk_contain_blocks bigstone_sandbox.temp 1
            execute if predicate bigstone_sandbox:item_detect/mainhand/is_placeitem run function bigstone_sandbox:grid/check_empty_chunk_block with storage bigstone_sandbox:data raycast.Data
            execute if predicate bigstone_sandbox:item_detect/offhand/is_placeitem unless predicate bigstone_sandbox:item_detect/offhand/is_item run function bigstone_sandbox:grid/check_empty_chunk_block with storage bigstone_sandbox:data raycast.Data
            #render error highlight
            execute \
                if score #chunk_contain_blocks bigstone_sandbox.temp matches 0 \
                    run scoreboard players set #cast_mode bigstone_sandbox.temp 2
            
            #run function to display highlight mesh according to item type
            function bigstone_sandbox:events/input/hold/update_highlight with storage bigstone_sandbox:data raycast.Data