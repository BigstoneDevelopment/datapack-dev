# add player tag
tag @s add bigstone_sandbox.loadTarget

# load saved structure data
data modify storage bigstone_sandbox:structures load set from storage bigstone_sandbox:structures save
$execute positioned $(x) $(y) $(z) run function item_structures:zprivate/load