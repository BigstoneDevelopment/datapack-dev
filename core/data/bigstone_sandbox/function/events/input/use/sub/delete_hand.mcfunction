#run function to allow delete chunk block
execute \
            if predicate bigstone_sandbox:item_detect/mainhand/is_deleteitem \
                run return run function bigstone_sandbox:events/input/use/delete with storage bigstone_sandbox:data raycast.Data
        execute \
            if predicate bigstone_sandbox:item_detect/offhand/is_deleteitem unless predicate bigstone_sandbox:item_detect/mainhand/is_item \
                run function bigstone_sandbox:events/input/use/delete with storage bigstone_sandbox:data raycast.Data