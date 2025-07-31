#run functions to execute placement/save
        execute if predicate bigstone_sandbox:item_detect/mainhand/is_placeitem \
            run return run function bigstone_sandbox:events/input/use/paste with storage bigstone_sandbox raycast.Data

        execute \
            if predicate bigstone_sandbox:item_detect/mainhand/is_storeitem \
            run return run function bigstone_sandbox:events/input/use/save with storage bigstone_sandbox raycast.Data

        #run functions to execute placement/save (offhand)
        execute if predicate bigstone_sandbox:item_detect/offhand/is_placeitem \
            run return run function bigstone_sandbox:events/input/use/paste with storage bigstone_sandbox raycast.Data

        execute \
            if predicate bigstone_sandbox:item_detect/offhand/is_storeitem \
            run return run function bigstone_sandbox:events/input/use/save with storage bigstone_sandbox raycast.Data