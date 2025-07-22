advancement revoke @s only bigstone_sandbox:item_detect/inactive_in_hotbar
advancement revoke @s only bigstone_sandbox:item_detect/hold
#skip waiting for advancement to run if item is detected in hand
execute if predicate bigstone_sandbox:item_detect/is_saveditem run advancement grant @s only bigstone_sandbox:item_detect/hold
say item in hotbar