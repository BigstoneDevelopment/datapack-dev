# cleanup
kill @e[tag=bigstone_sandbox.saver]
bossbar set bigstone_sandbox.progress visible false

# data size estimate
execute unless function item_structures:zprivate/save/data_size_estimate run return fail

# show result
execute as @a[tag=bigstone_sandbox.saveTarget] run function bigstone_sandbox:menu/dialog/saved_component

title @a[tag=bigstone_sandbox.saveTarget] actionbar [{text:"✓",bold:true,color:"green"},{text:" Component Saved",bold:false,color:"gray"}]
tag @a[tag=bigstone_sandbox.saveTarget] remove bigstone_sandbox.saveTarget