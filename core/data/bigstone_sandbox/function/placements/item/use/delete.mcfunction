# make sound wow it makes sound aaaaaa
$execute positioned $(x) $(y) $(z) run playsound minecraft:block.copper.hit block @a ~8 ~8 ~8 10.0
$execute positioned $(x) $(y) $(z) run fill ~ ~ ~ ~15 ~15 ~15 air strict

# second sound
$execute positioned $(x) $(y) $(z) run schedule function bigstone_sandbox:placements/item/use/sub/break_sound2 3t

# block update save
#$execute positioned $(x) $(y) $(z) run fill ~ ~ ~ ~15 ~15 ~15 stone strict
#$execute positioned $(x) $(y) $(z) run fill ~ ~ ~ ~15 ~15 ~15 air replace

# actionbar
#execute as @a[tag=bigstone_sandbox.this] at @s run title @s actionbar [{text:"✓",bold:true,color:"green"},{text:" Component Deleted",bold:false,color:"gray"}]