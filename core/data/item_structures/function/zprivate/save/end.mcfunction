title @a[tag=bigstone_sandbox.saveTarget] actionbar [{text:"✓",bold:true,color:"green"},{text:" Component Saved",bold:false,color:"gray"}]
kill @e[tag=bigstone_sandbox.saver]

tag @a[tag=bigstone_sandbox.saveTarget] remove bigstone_sandbox.saveTarget

bossbar set bigstone_sandbox.progress visible false

## data size estimate
# 4 bytes per entry
execute store result score bytes bigstone_sandbox.commands run data get storage bigstone_sandbox:structures save.blocks
scoreboard players operation bytes bigstone_sandbox.commands *= #4 bigstone_sandbox.constant
# 69 bytes per unique block state
scoreboard players set bytes_index bigstone_sandbox.commands 69
scoreboard players operation bytes_index bigstone_sandbox.commands *= id bigstone_sandbox.commands
scoreboard players operation bytes bigstone_sandbox.commands += bytes_index bigstone_sandbox.commands
# 400 bytes per block entity
#execute store result score bytes_nbt bigstone_sandbox.commands run data get storage bigstone_sandbox:structures save.nbts
scoreboard players operation bytes_nbt bigstone_sandbox.commands *= #4 bigstone_sandbox.constant
scoreboard players operation bytes_nbt bigstone_sandbox.commands *= #100 bigstone_sandbox.constant
scoreboard players operation bytes bigstone_sandbox.commands += bytes_nbt bigstone_sandbox.commands
# print
execute if score bytes bigstone_sandbox.commands matches ..999 run return run tellraw @a [{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.aprox_structure_data_size","fallback":"Approximate Structure data size: ","color":"gray"},{score:{name:"bytes",objective:"bigstone_sandbox.commands"}},{"text":" B","color":"gray"}]
scoreboard players operation kB bigstone_sandbox.commands = bytes bigstone_sandbox.commands
scoreboard players operation kB bigstone_sandbox.commands /= #1000 bigstone_sandbox.constant
scoreboard players operation bytes bigstone_sandbox.commands %= #1000 bigstone_sandbox.constant
scoreboard players operation bytes bigstone_sandbox.commands /= #100 bigstone_sandbox.constant
tellraw @a [{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.aprox_structure_data_size","fallback":"Approximate Structure data size: ","color":"gray"},{score:{name:"kB",objective:"bigstone_sandbox.commands"}},".",{score:{name:"bytes",objective:"bigstone_sandbox.commands"}},{"text":" kB","color":"gray"}]
execute if score kB bigstone_sandbox.commands matches 1800.. run tellraw @a [{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.structure_data_size_warning","fallback":"Structure is most likely too large to handle! Continue at own risk.","color":"red"}]