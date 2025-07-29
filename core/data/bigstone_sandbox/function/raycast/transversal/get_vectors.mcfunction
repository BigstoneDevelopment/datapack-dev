
data modify storage bigstone_sandbox:components raycast.origin set from entity @s Pos
execute positioned 0.0 0.0 0.0 run tp @s ^ ^ ^16
data modify storage bigstone_sandbox:components raycast.unit set from entity @s Pos

kill @s

execute store result score origin.x bigstone_sandbox.raycast run data get storage bigstone_sandbox:components raycast.origin[0] 16
execute store result score origin.y bigstone_sandbox.raycast run data get storage bigstone_sandbox:components raycast.origin[1] 16
execute store result score origin.z bigstone_sandbox.raycast run data get storage bigstone_sandbox:components raycast.origin[2] 16

execute store result score unit.x bigstone_sandbox.raycast run data get storage bigstone_sandbox:components raycast.unit[0] 4096
execute store result score unit.y bigstone_sandbox.raycast run data get storage bigstone_sandbox:components raycast.unit[1] 4096
execute store result score unit.z bigstone_sandbox.raycast run data get storage bigstone_sandbox:components raycast.unit[2] 4096


scoreboard players set delta.x bigstone_sandbox.raycast 268435456
scoreboard players set delta.y bigstone_sandbox.raycast 268435456
scoreboard players set delta.z bigstone_sandbox.raycast 268435456
scoreboard players operation delta.x bigstone_sandbox.raycast /= unit.x bigstone_sandbox.raycast
scoreboard players operation delta.y bigstone_sandbox.raycast /= unit.y bigstone_sandbox.raycast
scoreboard players operation delta.z bigstone_sandbox.raycast /= unit.z bigstone_sandbox.raycast

execute store result storage bigstone_sandbox:components raycast.delta.x float 0.00390625 run scoreboard players get delta.x bigstone_sandbox.raycast
execute store result storage bigstone_sandbox:components raycast.delta.y float 0.00390625 run scoreboard players get delta.y bigstone_sandbox.raycast
execute store result storage bigstone_sandbox:components raycast.delta.z float 0.00390625 run scoreboard players get delta.z bigstone_sandbox.raycast

execute store result score distance.x bigstone_sandbox.raycast run scoreboard players get origin.x bigstone_sandbox.raycast
execute store result score distance.y bigstone_sandbox.raycast run scoreboard players get origin.y bigstone_sandbox.raycast
execute store result score distance.z bigstone_sandbox.raycast run scoreboard players get origin.z bigstone_sandbox.raycast
scoreboard players operation distance.x bigstone_sandbox.raycast %= #256 consts
scoreboard players operation distance.y bigstone_sandbox.raycast %= #256 consts
scoreboard players operation distance.z bigstone_sandbox.raycast %= #256 consts