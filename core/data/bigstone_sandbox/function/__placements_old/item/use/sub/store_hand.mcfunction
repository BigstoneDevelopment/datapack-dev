#run functions to execute save
execute \
    if data storage bigstone_sandbox:data {temp:{item_use_effect:{effects:["store_component"]}}} \
        run function bigstone_sandbox:placements/item/use/save with storage bigstone_sandbox:data temp.raycast.Data