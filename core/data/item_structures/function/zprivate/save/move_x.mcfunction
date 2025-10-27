execute if score @s bigstone_sandbox.vect_x matches 1.. run function item_structures:zprivate/save/block
execute if score @s bigstone_sandbox.vect_x matches 1.. run tp @s ~1 ~ ~
execute if score @s bigstone_sandbox.vect_x matches 1.. run scoreboard players remove @s bigstone_sandbox.vect_x 1

execute if score @s bigstone_sandbox.vect_x matches 1.. unless score @s bigstone_sandbox.commands >= limit bigstone_sandbox.commands run return run function item_structures:zprivate/save/move
execute if score @s bigstone_sandbox.vect_x matches ..0 unless score @s bigstone_sandbox.commands >= limit bigstone_sandbox.commands run return run function item_structures:zprivate/save/move_z
execute if score @s bigstone_sandbox.commands >= limit bigstone_sandbox.commands run schedule function item_structures:zprivate/save/move 1t
execute if score @s bigstone_sandbox.commands >= limit bigstone_sandbox.commands run scoreboard players set @s bigstone_sandbox.commands 0