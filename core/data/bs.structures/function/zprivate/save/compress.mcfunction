# save.blocks[-1] = 32768*same_count + block_id
scoreboard players operation same_count bigstone_sandbox.commands *= #32768 bigstone_sandbox.constant
execute store result score block_id bigstone_sandbox.commands run data get storage bigstone_sandbox:structures save.blocks[-1] 1
execute store result storage bigstone_sandbox:structures save.blocks[-1] int 1 run scoreboard players operation same_count bigstone_sandbox.commands += block_id bigstone_sandbox.commands

scoreboard players set same_count bigstone_sandbox.commands 0