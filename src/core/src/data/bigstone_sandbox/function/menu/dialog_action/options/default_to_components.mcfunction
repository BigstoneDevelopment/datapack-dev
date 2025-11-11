scoreboard players set bool bigstone_sandbox.temp 0
execute if entity @s[tag=bigstone_sandbox.default_to_components] run scoreboard players set bool bigstone_sandbox.temp 1

execute if score bool bigstone_sandbox.temp matches 1 run tag @s remove bigstone_sandbox.default_to_components
execute if score bool bigstone_sandbox.temp matches 0 run tag @s add bigstone_sandbox.default_to_components

scoreboard players reset bool bigstone_sandbox.temp

function bigstone_sandbox:menu/dialog/options