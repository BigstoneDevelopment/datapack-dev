execute as @e[tag=bigstone_sandbox.org_z,limit=1,type=marker,tag=bigstone_sandbox.loader,sort=nearest] at @s run tp @s ~ ~ ~1
tp @s @e[tag=bigstone_sandbox.org_z,limit=1,type=marker,tag=bigstone_sandbox.loader,sort=nearest]

scoreboard players remove @s bigstone_sandbox.vect_z 1
scoreboard players operation @s bigstone_sandbox.vect_x = system bigstone_sandbox.vect_x

execute store result bossbar bigstone_sandbox.progress value run scoreboard players add value bigstone_sandbox.vect_x 1

execute if score @s bigstone_sandbox.vect_z matches 1.. run return run function bs.structures:zprivate/load/move
execute if score @s bigstone_sandbox.vect_z matches ..0 run function bs.structures:zprivate/load/move_y