scoreboard players set @s bigstone_sandbox.commands 0

execute store result score system bigstone_sandbox.vect_x run data get storage bigstone_sandbox:structures load.size[0]
execute store result score system bigstone_sandbox.vect_y run data get storage bigstone_sandbox:structures load.size[1]
execute store result score system bigstone_sandbox.vect_z run data get storage bigstone_sandbox:structures load.size[2]

scoreboard players operation @s bigstone_sandbox.vect_x = system bigstone_sandbox.vect_x
scoreboard players operation @s bigstone_sandbox.vect_y = system bigstone_sandbox.vect_y
scoreboard players operation @s bigstone_sandbox.vect_z = system bigstone_sandbox.vect_z

function item_structures:zprivate/load/move