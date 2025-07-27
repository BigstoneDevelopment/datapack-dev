#delete self if block is at is air.
execute if block ~ ~ ~ #air run return run kill @s
#run data collection
execute positioned ~ ~ ~ run function #bs.block:get_block
data remove storage bigstone temp
data modify storage bigstone temp.block set from storage bs:out block
data remove storage bigstone temp.block.block
data remove storage bigstone temp.block.properties
data remove storage bigstone temp.block.sounds
data remove storage bigstone temp.block.group

data remove storage bigstone temp.block.item
data modify storage bigstone temp.UUID set from entity @s data.UUID

data modify storage bigstone block_collection.block_array append from storage bigstone temp

kill @s