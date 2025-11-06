scoreboard players add @s bigstone_sandbox.commands 50

# read entry
execute store result score block_id bigstone_sandbox.commands run data get storage bigstone_sandbox:structures load.blocks[0]

## single block
execute if score block_id bigstone_sandbox.commands matches 0..32767 run return run function bs.structures:zprivate/load/block_place

## multiple blocks
# parse entry
scoreboard players operation same_count bigstone_sandbox.commands = block_id bigstone_sandbox.commands
scoreboard players operation block_id bigstone_sandbox.commands %= #32768 bigstone_sandbox.constant
scoreboard players operation same_count bigstone_sandbox.commands /= #32768 bigstone_sandbox.constant

# if entry fits in the row, easy
execute if score same_count bigstone_sandbox.commands < @s bigstone_sandbox.vect_x run data remove storage bigstone_sandbox:structures load.blocks[0]
# if entry goes past end of row, split it
execute if score same_count bigstone_sandbox.commands >= @s bigstone_sandbox.vect_x run function bs.structures:zprivate/load/split_entry

# fill
execute store result storage bigstone_sandbox:structures macro.index short 1 run scoreboard players get block_id bigstone_sandbox.commands
execute store result storage bigstone_sandbox:structures macro.length_minus_one short 1 run scoreboard players get same_count bigstone_sandbox.commands
function bs.structures:zprivate/load/block_fill_lookup with storage bigstone_sandbox:structures macro