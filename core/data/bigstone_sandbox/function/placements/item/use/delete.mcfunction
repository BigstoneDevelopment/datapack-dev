# make sound wow it makes sound aaaaaa
$execute positioned $(x) $(y) $(z) run playsound minecraft:block.stone.break block @a ~8 ~8 ~8 10.0
$execute positioned $(x) $(y) $(z) run fill ~ ~ ~ ~15 ~15 ~15 air strict

# block update save
#$execute positioned $(x) $(y) $(z) run fill ~ ~ ~ ~15 ~15 ~15 stone strict
#$execute positioned $(x) $(y) $(z) run fill ~ ~ ~ ~15 ~15 ~15 air replace

# actionbar
#execute as @a[tag=bigstone_sandbox.this] at @s run title @s actionbar [{text:"✓",bold:true,color:"green"},{text:" Component Deleted",bold:false,color:"gray"}]