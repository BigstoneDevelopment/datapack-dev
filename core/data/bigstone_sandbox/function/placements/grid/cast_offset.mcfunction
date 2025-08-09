#store targeted block
execute store result score #targeted_block.x bigstone_sandbox.temp run data get storage bigstone_sandbox:data raycast.Data.x
execute store result score #targeted_block.y bigstone_sandbox.temp run data get storage bigstone_sandbox:data raycast.Data.y
execute store result score #targeted_block.z bigstone_sandbox.temp run data get storage bigstone_sandbox:data raycast.Data.z

#offset to nearest 16x16x16 chunk
execute store result score #hit_normal.x bigstone_sandbox.temp run data get storage bs:out raycast.hit_normal[0]
execute store result score #hit_normal.y bigstone_sandbox.temp run data get storage bs:out raycast.hit_normal[1]
execute store result score #hit_normal.z bigstone_sandbox.temp run data get storage bs:out raycast.hit_normal[2]

execute if score #hit_normal.x bigstone_sandbox.temp matches -1 run scoreboard players operation #targeted_block.x bigstone_sandbox.temp -= #16 consts
execute if score #hit_normal.x bigstone_sandbox.temp matches 1 run scoreboard players operation #targeted_block.x bigstone_sandbox.temp += #16 consts

execute if score #hit_normal.y bigstone_sandbox.temp matches -1 run scoreboard players operation #targeted_block.y bigstone_sandbox.temp -= #16 consts
execute if score #hit_normal.y bigstone_sandbox.temp matches 1 run scoreboard players operation #targeted_block.y bigstone_sandbox.temp += #16 consts

execute if score #hit_normal.z bigstone_sandbox.temp matches -1 run scoreboard players operation #targeted_block.z bigstone_sandbox.temp -= #16 consts
execute if score #hit_normal.z bigstone_sandbox.temp matches 1 run scoreboard players operation #targeted_block.z bigstone_sandbox.temp += #16 consts

execute store result storage bigstone_sandbox:data raycast.Data.x int 1 run scoreboard players get #targeted_block.x bigstone_sandbox.temp
execute store result storage bigstone_sandbox:data raycast.Data.y int 1 run scoreboard players get #targeted_block.y bigstone_sandbox.temp
execute store result storage bigstone_sandbox:data raycast.Data.z int 1 run scoreboard players get #targeted_block.z bigstone_sandbox.temp

#tellraw @a {"score":{"name":"#targeted_block.x","objective":"bigstone_sandbox"}}