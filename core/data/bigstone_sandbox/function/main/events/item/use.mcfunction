#run when target item in hand
#if item is not equipped exit function
execute unless entity @s[predicate=bigstone_sandbox:item_detect/is_item] run return fail
    #reset function and enable posthold process
    advancement revoke @s only bigstone_sandbox:item_detect/place
    function bigstone_sandbox:placements/item/use/item
