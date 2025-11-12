#run functions to execute save
execute \
    unless data storage bigstone_sandbox:data {temp:{item_use_effect:{effects:["collect_component"]}}} \
        run return fail
        
execute if score #weapon_slot_id bigstone_sandbox.temp matches 1 \
    run return run function bigstone_sandbox:placements/item/use/get_item/mainhand with storage bigstone_sandbox:data component
execute if score #weapon_slot_id bigstone_sandbox.temp matches 2 \
    run function bigstone_sandbox:placements/item/use/get_item/offhand with storage bigstone_sandbox:data component