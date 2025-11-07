# block -> int @ save.stack
# same as previous block?
execute store result score different bigstone_sandbox.commands run function bs.structures:zprivate/save/block_get

# if >131071 in a row, treat as different b/c we can't store the streak length in 17 bits anymore
execute if score same_count bigstone_sandbox.commands matches 131071 run scoreboard players set different bigstone_sandbox.commands 1

# if nbt, treat as different to prevent data loss
execute if data block ~ ~ ~ {} run scoreboard players set different bigstone_sandbox.commands 1
execute if data block ~ ~ ~ {} run data modify storage bigstone_sandbox:structures save.nbts append from block ~ ~ ~ {}

# add entry
execute if score different bigstone_sandbox.commands matches 0 run scoreboard players add same_count bigstone_sandbox.commands 1
execute if score different bigstone_sandbox.commands matches 0 if score @s bigstone_sandbox.vect_x matches 1 if score @s bigstone_sandbox.vect_y matches 1 if score @s bigstone_sandbox.vect_z matches 1 run function bs.structures:zprivate/save/compress
execute if score different bigstone_sandbox.commands matches 1 if score same_count bigstone_sandbox.commands matches 1.. run function bs.structures:zprivate/save/compress
execute if score different bigstone_sandbox.commands matches 1 run data modify storage bigstone_sandbox:structures save.blocks append from storage bigstone_sandbox:structures save.stack

scoreboard players add @s bigstone_sandbox.commands 50