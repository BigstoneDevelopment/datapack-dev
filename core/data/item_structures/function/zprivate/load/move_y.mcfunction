execute as @e[tag=bigstone_sandbox.org_y,limit=1,type=marker,tag=bigstone_sandbox.loader,sort=nearest] at @s run tp @s ~ ~1 ~
tp @s @e[tag=bigstone_sandbox.org_y,limit=1,type=marker,tag=bigstone_sandbox.loader,sort=nearest]
tp @e[tag=bigstone_sandbox.org_z,limit=1,type=marker,tag=bigstone_sandbox.loader,sort=nearest] @s

scoreboard players remove @s bigstone_sandbox.vect_y 1
scoreboard players operation @s bigstone_sandbox.vect_z = system bigstone_sandbox.vect_z

execute if score @s bigstone_sandbox.vect_y matches 1.. run return run function item_structures:zprivate/load/move
execute if score @s bigstone_sandbox.vect_y matches ..0 run function item_structures:zprivate/load/end