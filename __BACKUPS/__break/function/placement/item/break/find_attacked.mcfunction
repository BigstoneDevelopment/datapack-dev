# create temp scorboard
scoreboard players set #isAttacked bigstone_sandbox.temp 0

# check if interaction is being attacked
execute on attacker store result score #isAttacked bigstone_sandbox.temp if entity @s[tag=bigstone_sandbox.this]

# return if not being attacked
execute if score #isAttacked bigstone_sandbox.temp matches 0 run return 0

# run function to get data and cleanup this checking
function bigstone_sandbox:placements/item/break/get_data
data remove entity @s attack

return 1