#run functions to execute placement
execute \
    if data storage bigstone_sandbox:data {temp:{item_use_effect:{effects:["place_component"]}}} \
        run function bigstone_sandbox:placements/item/use/paste with storage bigstone_sandbox:data temp.raycast.Data