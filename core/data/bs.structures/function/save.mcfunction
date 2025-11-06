# get start point coords
$scoreboard players set #z1 bigstone_sandbox.vect_x $(x)
$scoreboard players set #z1 bigstone_sandbox.vect_y $(y)
$scoreboard players set #z1 bigstone_sandbox.vect_z $(z)

#set fixed width
scoreboard players set system bigstone_sandbox.vect_x 16
scoreboard players set system bigstone_sandbox.vect_y 16
scoreboard players set system bigstone_sandbox.vect_z 16

# add player tag
tag @s add bigstone_sandbox.saveTarget

# save structure data
$execute positioned $(x) $(y) $(z) run function bs.structures:zprivate/save

return 1