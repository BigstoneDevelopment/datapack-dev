# CURRENT BIT

# add interaction entity
$scoreboard players set #xPos bigstone_sandbox.temp $(x)
$scoreboard players set #yPos bigstone_sandbox.temp $(y)
$scoreboard players set #zPos bigstone_sandbox.temp $(z)

# main interaction
execute store result storage bigstone_sandbox:data temp.pastePos.x1 int 1 run scoreboard players get #xPos bigstone_sandbox.temp
execute store result storage bigstone_sandbox:data temp.pastePos.y1 int 1 run scoreboard players get #yPos bigstone_sandbox.temp
execute store result storage bigstone_sandbox:data temp.pastePos.z1 int 1 run scoreboard players get #zPos bigstone_sandbox.temp

scoreboard players add #xPos bigstone_sandbox.temp 8
scoreboard players add #zPos bigstone_sandbox.temp 8

execute store result storage bigstone_sandbox:data temp.pastePos.x int 1 run scoreboard players get #xPos bigstone_sandbox.temp
execute store result storage bigstone_sandbox:data temp.pastePos.y int 1 run scoreboard players get #yPos bigstone_sandbox.temp
execute store result storage bigstone_sandbox:data temp.pastePos.z int 1 run scoreboard players get #zPos bigstone_sandbox.temp

function bigstone_sandbox:placements/item/use/sub/summon_interaction with storage bigstone_sandbox:data temp.pastePos

# base interaction
scoreboard players remove #yPos bigstone_sandbox.temp 1
execute store result storage bigstone_sandbox:data temp.pastePos.y int 1 run scoreboard players get #yPos bigstone_sandbox.temp

function bigstone_sandbox:placements/item/use/sub/summon_interaction_base with storage bigstone_sandbox:data temp.pastePos

# cleanup
data remove storage bigstone_sandbox:structures temp.pastePos
scoreboard players reset #xPos bigstone_sandbox.temp
scoreboard players reset #yPos bigstone_sandbox.temp
scoreboard players reset #zPos bigstone_sandbox.temp