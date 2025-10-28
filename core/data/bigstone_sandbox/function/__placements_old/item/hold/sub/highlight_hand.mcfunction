execute if predicate bigstone_sandbox:item_detect/mainhand/is_placeitem \
                run scoreboard players set #cast_mode bigstone_sandbox.temp 0
execute if predicate bigstone_sandbox:item_detect/mainhand/is_deleteitem \
                run scoreboard players set #cast_mode bigstone_sandbox.temp 3
execute if predicate bigstone_sandbox:item_detect/mainhand/is_storeitem \
                run scoreboard players set #cast_mode bigstone_sandbox.temp 1
                
execute if predicate bigstone_sandbox:item_detect/mainhand/is_item run return fail
#offhand
execute if predicate bigstone_sandbox:item_detect/offhand/is_placeitem \
                run scoreboard players set #cast_mode bigstone_sandbox.temp 0
execute if predicate bigstone_sandbox:item_detect/offhand/is_deleteitem \
                run scoreboard players set #cast_mode bigstone_sandbox.temp 3
execute if predicate bigstone_sandbox:item_detect/offhand/is_storeitem \
                run scoreboard players set #cast_mode bigstone_sandbox.temp 1