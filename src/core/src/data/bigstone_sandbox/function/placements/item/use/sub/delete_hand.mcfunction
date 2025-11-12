#run function to allow delete chunk block
execute \
    if data storage bigstone_sandbox:data {temp:{item_use_effect:{effects:["delete_component"]}}} \
        run function bigstone_sandbox:placements/item/use/delete with storage bigstone_sandbox:data temp.raycast.Data