#delete self if block is at is air.
execute if block ~ ~ ~ #air run return run kill @s
#run data collection
execute positioned ~ ~ ~ run function #bs.block:get_block
data remove storage bigstone_sandbox temp
data modify storage bigstone_sandbox temp.block set from storage bs:out block
data remove storage bigstone_sandbox temp.block.block
data remove storage bigstone_sandbox temp.block.properties
data remove storage bigstone_sandbox temp.block.sounds
data remove storage bigstone_sandbox temp.block.group

data remove storage bigstone_sandbox temp.block.item
data modify storage bigstone_sandbox temp.UUID set from entity @s data.UUID

data modify storage bigstone_sandbox block_collection.block_array append from storage bigstone_sandbox temp

kill @s