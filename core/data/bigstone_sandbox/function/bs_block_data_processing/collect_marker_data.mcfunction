#update this document when the block serialisation system is implemented
#delete self if block is at is air.
execute as @e[type=marker,tag=bs_scan,dx=16,dy=16,dz=16] at @s if block ~ ~ ~ #air run kill @s

#run data collection
#execute as b19270-0-2-0-30000000f run say hi