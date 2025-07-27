scoreboard players set bool bigstone_sandbox.temp 0
execute store result score bool bigstone_sandbox.temp run gamerule sendCommandFeedback

execute if score bool bigstone_sandbox.temp matches 1 run gamerule sendCommandFeedback false
execute if score bool bigstone_sandbox.temp matches 0 run gamerule sendCommandFeedback true

scoreboard players reset bool bigstone_sandbox.temp

function bigstone_sandbox:dialog/admin_options