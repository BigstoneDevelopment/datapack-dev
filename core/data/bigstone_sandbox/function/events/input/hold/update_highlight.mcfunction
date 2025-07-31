#set player ID if they don't have one

execute as @s[predicate=!bs.id:has_suid] run function #bs.id:give_suid
#store player ID in highlight storage
#if mode is different run function
execute \
    unless score @s bigstone_sandbox.cast_mode = #cast_mode bigstone_sandbox \
        run function bigstone_sandbox:grid/clear_highlight with storage bigstone_sandbox highlight
scoreboard players operation @s bigstone_sandbox.cast_mode = #cast_mode bigstone_sandbox

execute if score #cast_mode bigstone_sandbox matches 0 run data modify storage bigstone_sandbox highlight set from storage bigstone:settings highlightColour.paste
execute if score #cast_mode bigstone_sandbox matches 1 run data modify storage bigstone_sandbox highlight set from storage bigstone:settings highlightColour.select
execute if score #cast_mode bigstone_sandbox matches 3 run data modify storage bigstone_sandbox highlight set from storage bigstone:settings highlightColour.delete
execute if score #cast_set bigstone_sandbox matches 1 run data modify storage bigstone_sandbox highlight set from storage bigstone:settings highlightColour.invalid
#data modify storage bigstone_sandbox highlight set from storage bigstone:settings highlightColour.paste
execute store result storage bigstone_sandbox highlight.SUID int 1 run scoreboard players get @s bs.id
$execute positioned $(x) $(y) $(z) align xyz run function bigstone_sandbox:grid/create_boxhighlight with storage bigstone_sandbox highlight
