## Bookshelf - edited version of #bs.block:get_block to exclude NBT, which is handled separately

#read block, undid shuba optimisation
data remove storage bs:out block
#loot replace entity B5-0-0-0-3 container.0 loot bs.block:get/get_block
loot replace entity B5-0-0-0-3 contents loot bs.block:block/get_block

data modify storage bs:out block set from entity B5-0-0-0-3 item.components."minecraft:custom_data"

# remove 'minecraft:' prefix
data modify storage bs:out block.type set string storage bs:out block.type 10

# return the block string: {type}
execute unless data storage bs:out block._ run return run data modify storage bs:out block.block set from storage bs:out block.type

# generate the state string
function bs.block:get/compile/state

# return the block string: {type}{state}
return run function bs.block:get/compile/concat/block/state with storage bs:out block