## Bookshelf
# place block
execute store result storage bigstone_sandbox:structures macro.index short 1 run scoreboard players get block_id bigstone_sandbox.commands
function bs.structures:zprivate/load/block_place_lookup with storage bigstone_sandbox:structures macro
# nbt
execute if data block ~ ~ ~ {} run data modify block ~ ~ ~ {} merge from storage bigstone_sandbox:structures load.nbts[0]
execute if data block ~ ~ ~ {} run data remove storage bigstone_sandbox:structures load.nbts[0]
# remove entry
data remove storage bigstone_sandbox:structures load.blocks[0]