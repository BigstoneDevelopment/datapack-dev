
#run highlight box function with color
data modify storage bigstone_sandbox highlight set from storage bigstone:settings highlightColour.paste
#set player ID if they don't have one
execute as @s[predicate=!bs.id:has_suid] run function #bs.id:give_suid
#store player ID in highlight storage
execute store result storage bigstone_sandbox highlight.SUID int 1 run scoreboard players get @s bs.id
#detect if was in other mode
tag @s add highlightModePaste
say cleared3
execute if entity @s[tag=highlightModeSelect] run function bigstone_sandbox:grid/clear_highlight with storage bigstone_sandbox highlight
tag @s remove highlightModeSelect
$execute positioned $(x) $(y) $(z) align xyz run function bigstone_sandbox:grid/create_boxhighlight with storage bigstone_sandbox highlight