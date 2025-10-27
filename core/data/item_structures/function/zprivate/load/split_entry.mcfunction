# put what doesn't fit in this row back into array
scoreboard players operation tmp bigstone_sandbox.commands = same_count bigstone_sandbox.commands
scoreboard players operation tmp bigstone_sandbox.commands -= @s bigstone_sandbox.vect_x
scoreboard players operation tmp bigstone_sandbox.commands *= #32768 bigstone_sandbox.constant
execute store result storage bigstone_sandbox:structures load.blocks[0] int 1 run scoreboard players operation tmp bigstone_sandbox.commands += block_id bigstone_sandbox.commands

# get length of what fits
scoreboard players operation same_count bigstone_sandbox.commands = @s bigstone_sandbox.vect_x
scoreboard players remove same_count bigstone_sandbox.commands 1