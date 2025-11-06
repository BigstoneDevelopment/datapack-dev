scoreboard players set @s bigstone_sandbox.commands 0
data remove storage bigstone_sandbox:structures save

data merge storage bigstone_sandbox:structures {save:{size:[16,16,16],blocks:[I;],index:[]},anti_index:[]}
#tellraw @a ["size: ",{nbt:"save.size",storage:"bigstone_sandbox:structures"}]

data remove storage bs:out block

scoreboard players set id bigstone_sandbox.commands -1
scoreboard players set same_count bigstone_sandbox.commands 0

scoreboard players set @s bigstone_sandbox.vect_x 16
scoreboard players set @s bigstone_sandbox.vect_y 16
scoreboard players set @s bigstone_sandbox.vect_z 16

function bs.structures:zprivate/save/move