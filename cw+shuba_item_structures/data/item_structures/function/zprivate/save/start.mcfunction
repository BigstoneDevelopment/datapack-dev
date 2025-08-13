scoreboard players set @s commands 0
data remove storage minecraft:item_structures save

data merge storage item_structures {save:{size:[16,16,16],blocks:[I;],index:[]},anti_index:[]}
tellraw @a ["size: ",{nbt:"save.size",storage:"item_structures"}]

#fixed volume, so we don't need to calculate it
scoreboard players set total vect_x 4096
tellraw @a ["volume: ",{score:{name:"total",objective:"vect_x"}}," blocks"]
scoreboard players operation total vect_x *= #100 constant
scoreboard players operation total vect_x /= .max_export_volume constant
tellraw @a [{score:{name:"total",objective:"vect_x"}},"% of max recommended export volume (",{score:{name:".max_export_volume",objective:"constant"}}," blocks)"]
execute if score total vect_x matches 100.. run tellraw @a [{color:"yellow",text:"NOTICE: structure is really big. after saving it, we'll tell you if it's too big to export or not. but it's probably fine - especially if you have large areas with all one block, including air."}]

# first block can't match "previous" block
#data modify storage item_structures prev set value -1 
data remove storage bs:out block

scoreboard players set id commands -1
scoreboard players set same_count commands 0

scoreboard players set @s vect_x 16
scoreboard players set @s vect_y 16
scoreboard players set @s vect_z 16

function item_structures:zprivate/save/move