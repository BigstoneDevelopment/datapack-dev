# add tag to player
$tag @a[nbt={UUID:$(target)}] add bigstone_sandbox.loadTarget

# load structure
data modify storage bigstone_sandbox:structures load set from storage bigstone_sandbox:structures current.data
$execute positioned $(x) $(y) $(z) run function item_structures:zprivate/load