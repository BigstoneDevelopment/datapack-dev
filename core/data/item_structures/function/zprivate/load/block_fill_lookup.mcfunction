# fill
$data modify storage bigstone_sandbox:structures macro.block set from storage bigstone_sandbox:structures load.index[$(index)]
function item_structures:zprivate/load/block_fill_fill with storage bigstone_sandbox:structures macro

# skip blocks filled
$tp @s ~$(length_minus_one) ~ ~
scoreboard players operation @s bigstone_sandbox.vect_x -= same_count bigstone_sandbox.commands