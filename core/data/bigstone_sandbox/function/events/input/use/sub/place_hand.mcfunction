#run functions to execute placement
execute \
    if data storage bigstone_sandbox:data {temp:{effects:["place_component"]}} \
        run function bigstone_sandbox:events/input/use/paste with storage bigstone_sandbox:data raycast.Data