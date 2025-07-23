scoreboard players set bool bigstone_sandbox.temp 0
execute if entity @s[tag=bigstone_sandbox.block_shape_highlight] run scoreboard players set bool bigstone_sandbox.temp 1

execute if score bool bigstone_sandbox.temp matches 1 run tag @s remove bigstone_sandbox.block_shape_highlight
execute if score bool bigstone_sandbox.temp matches 0 run tag @s add bigstone_sandbox.block_shape_highlight

scoreboard players reset bool bigstone_sandbox.temp

function bigstone_sandbox:dialog/options