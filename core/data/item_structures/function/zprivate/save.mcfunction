#modified for bigstone sandbox
kill @e[tag=bigstone_sandbox.saver]
summon marker ~ ~ ~ {Tags:["bigstone_sandbox.saver","bigstone_sandbox.org_x"]}
summon marker ~ ~ ~ {Tags:["bigstone_sandbox.saver","bigstone_sandbox.org_y"]}
summon marker ~ ~ ~ {Tags:["bigstone_sandbox.saver","bigstone_sandbox.org_z"]}

function item_structures:zprivate/progress_estimate
bossbar set bigstone_sandbox.progress name {text:"Save Progress (gets slower over time)",color:"green"}

execute as @e[tag=bigstone_sandbox.saver,tag=bigstone_sandbox.org_x,limit=1,type=marker] at @s run function item_structures:zprivate/save/start