scoreboard players set bool bigstone_sandbox.temp 0
execute if entity @s[tag=bigstone_sandbox.music] run scoreboard players set bool bigstone_sandbox.temp 1

execute if score bool bigstone_sandbox.temp matches 1 run tag @s remove bigstone_sandbox.music
execute if score bool bigstone_sandbox.temp matches 0 run tag @s add bigstone_sandbox.music

execute if score bool bigstone_sandbox.temp matches 1 run function bigstone_sandbox:dialog_action/music/stop
execute if score bool bigstone_sandbox.temp matches 0 run function bigstone_sandbox:dialog_action/music/start

scoreboard players reset bool bigstone_sandbox.temp

function bigstone_sandbox:dialog/options