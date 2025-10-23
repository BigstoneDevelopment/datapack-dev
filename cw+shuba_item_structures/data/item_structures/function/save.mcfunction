#execute store result score #x1 vect_x run data get entity @e[tag=start_point,limit=1] Pos[0]
scoreboard players set #x1 vect_x 29999984
#set fixed width
scoreboard players set system vect_x 16

#execute store result score #y1 vect_y run data get entity @e[tag=start_point,limit=1] Pos[1]
scoreboard players set #y1 vect_y 288
scoreboard players add #y1 vect_y 1

scoreboard players set system vect_y 16
#execute store result score #z1 vect_z run data get entity @e[tag=start_point,limit=1] Pos[2]
scoreboard players set #z1 vect_z 29999984

scoreboard players set system vect_x 1

summon marker 29999984 287 29999984 {Tags:["positioner"]}
execute store result entity @e[tag=positioner,limit=1] Pos[0] double 1 run scoreboard players get #x1 vect_x
execute store result entity @e[tag=positioner,limit=1] Pos[1] double 1 run scoreboard players get #y1 vect_y
execute store result entity @e[tag=positioner,limit=1] Pos[2] double 1 run scoreboard players get #z1 vect_z

execute at @e[tag=positioner] run function item_structures:zprivate/save
kill @e[tag=positioner]

title @s times 10 200 10
title @s actionbar ["",{"text":"Corner: (","color":"dark_gray"},{"score":{"name":"#x1","objective":"vect_x"},"color":"yellow"},{"text":","},{"score":{"name":"#y1","objective":"vect_y"},"color":"blue"},{"text":","},{"score":{"name":"#z1","objective":"vect_z"},"color":"red"},{"text":")","color":"dark_gray"},{"text":" Size: (","color":"dark_gray"},{"score":{"name":"system","objective":"vect_x"},"color":"gold"},{"text":","},{"score":{"name":"system","objective":"vect_y"},"color":"dark_blue"},{"text":","},{"score":{"name":"system","objective":"vect_z"},"color":"dark_red"},{"text":")","color":"dark_gray"}]

execute store result score #sendFeedback item_structures run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
schedule function item_structures:zprivate/reset_gamerules 1t

function item_structures:zprivate/menu/sound