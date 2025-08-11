#run when target item in hand

execute unless entity @s[tag=bigstone_sandbox.placement_highlight] run return fail
#if item is not equipped exit function
execute unless predicate bigstone_sandbox:item_detect/is_item run return fail
    #reset function and enable posthold process
    advancement revoke @s only bigstone_sandbox:item_detect/posthold
    advancement revoke @s only bigstone_sandbox:item_detect/inactive_in_offhand
    advancement revoke @s only bigstone_sandbox:item_detect/hold
    advancement revoke @s only bigstone_sandbox:item_detect/active_in_offhand

    advancement revoke @s only bigstone_sandbox:item_detect/place
    function bigstone_sandbox:placements/item/hold/item