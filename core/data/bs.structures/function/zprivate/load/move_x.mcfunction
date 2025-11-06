execute if score @s bigstone_sandbox.vect_x matches 1.. run function bs.structures:zprivate/load/block
execute if score @s bigstone_sandbox.vect_x matches 1.. run scoreboard players remove @s bigstone_sandbox.vect_x 1
execute if score @s bigstone_sandbox.vect_x matches 1.. at @s run tp @s ~1 ~ ~

execute if score @s bigstone_sandbox.vect_x matches 1.. unless score @s bigstone_sandbox.commands >= limit bigstone_sandbox.commands run return run function bs.structures:zprivate/load/move
execute if score @s bigstone_sandbox.vect_x matches ..0 unless score @s bigstone_sandbox.commands >= limit bigstone_sandbox.commands run return run function bs.structures:zprivate/load/move_z
execute if score @s bigstone_sandbox.commands >= limit bigstone_sandbox.commands run schedule function bs.structures:zprivate/load/move 1t
execute if score @s bigstone_sandbox.commands >= limit bigstone_sandbox.commands run scoreboard players set @s bigstone_sandbox.commands 0