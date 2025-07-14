function bigstone_sandbox:bs_block_data_processing/spawn_marker_array
execute as @e[type=marker,tag=bs_scan,dx=15,dy=15,dz=15] at @s run setblock ~ ~ ~ minecraft:glass
execute as @e[type=marker,tag=bs_scan,dx=15,dy=15,dz=15] run kill @s