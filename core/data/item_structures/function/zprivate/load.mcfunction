kill @e[tag=bigstone_sandbox.loader]
summon marker ~ ~ ~ {Tags:["bigstone_sandbox.loader","bigstone_sandbox.org_x"]}
summon marker ~ ~ ~ {Tags:["bigstone_sandbox.loader","bigstone_sandbox.org_y"]}
summon marker ~ ~ ~ {Tags:["bigstone_sandbox.loader","bigstone_sandbox.org_z"]}

function item_structures:zprivate/progress_estimate

execute as @e[tag=bigstone_sandbox.loader,tag=bigstone_sandbox.org_x,limit=1,type=marker] at @s run function item_structures:zprivate/load/start