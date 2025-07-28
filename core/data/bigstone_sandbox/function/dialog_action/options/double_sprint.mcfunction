scoreboard players set bool bigstone_sandbox.temp 0
execute if entity @s[tag=bigstone_sandbox.double_sprint_keybind] run scoreboard players set bool bigstone_sandbox.temp 1

execute if score bool bigstone_sandbox.temp matches 1 run tag @s remove bigstone_sandbox.double_sprint_keybind
execute if score bool bigstone_sandbox.temp matches 0 run tag @s add bigstone_sandbox.double_sprint_keybind
advancement revoke @s only bigstone_sandbox:keybind/on_sprint

scoreboard players reset bool bigstone_sandbox.temp

function bigstone_sandbox:dialog/options