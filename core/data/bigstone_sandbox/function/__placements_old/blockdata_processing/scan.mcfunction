say Start
function bigstone_sandbox:placements/blockdata_processing/marker_array/spawn
#execute as @e[type=marker,tag=bigstone_scan,dx=15,dy=15,dz=15] at @s run setblock ~ ~ ~ minecraft:air

data remove storage bigstone block_collection
execute as @e[type=marker,tag=bigstone_scan,dx=15,dy=15,dz=15] at @s run function bigstone_sandbox:placements/blockdata_processing/collect_marker_data
#execute as Arttale run function bigstone_sandbox:blockdata_processing/give_item with storage bigstone block_collection
say DONE!