tag @s add highlightMode
#check hand for placeblock
scoreboard players set #chunk_contain_blocks bigstone_sandbox.temp 1
execute if predicate bigstone_sandbox:item_detect/mainhand/is_placeitem run function bigstone_sandbox:placements/grid/check_empty_chunk_block with storage bigstone_sandbox:data temp.raycast.Data
execute if predicate bigstone_sandbox:item_detect/offhand/is_placeitem unless predicate bigstone_sandbox:item_detect/offhand/is_item run function bigstone_sandbox:placements/grid/check_empty_chunk_block with storage bigstone_sandbox:data temp.raycast.Data

#set player ID if they don't have one
execute as @s[predicate=!bs.id:has_suid] run function #bs.id:give_suid
#if mode is different run clear
execute \
    unless score @s bigstone_sandbox.cast_mode = #cast_mode bigstone_sandbox.temp \
        run function bigstone_sandbox:placements/grid/clear_highlight with storage bigstone_sandbox:data highlight
execute \
    unless score @s bigstone_sandbox.invalid_highlight = #chunk_contain_blocks bigstone_sandbox.temp \
        run function bigstone_sandbox:placements/grid/clear_highlight with storage bigstone_sandbox:data highlight
scoreboard players operation @s bigstone_sandbox.cast_mode = #cast_mode bigstone_sandbox.temp
scoreboard players operation @s bigstone_sandbox.invalid_highlight = #chunk_contain_blocks bigstone_sandbox.temp

#set highlight mode
execute if score #cast_mode bigstone_sandbox.temp matches 0 run data modify storage bigstone_sandbox:data highlight set from storage bigstone_sandbox:data settings.highlightColour.paste
execute if score #cast_mode bigstone_sandbox.temp matches 1 run data modify storage bigstone_sandbox:data highlight set from storage bigstone_sandbox:data settings.highlightColour.select
execute if score #cast_mode bigstone_sandbox.temp matches 3 run data modify storage bigstone_sandbox:data highlight set from storage bigstone_sandbox:data settings.highlightColour.delete
execute if score #chunk_contain_blocks bigstone_sandbox.temp matches 0 run data modify storage bigstone_sandbox:data highlight set from storage bigstone_sandbox:data settings.highlightColour.invalid
#data modify storage bigstone_sandbox:data highlight set from storage bigstone_sandbox:data settings.highlightColour.paste
#store player ID in highlight storage
execute store result storage bigstone_sandbox:data highlight.SUID int 1 run scoreboard players get @s bs.id
$execute positioned $(x) $(y) $(z) align xyz run function bigstone_sandbox:placements/grid/create_boxhighlight with storage bigstone_sandbox:data highlight
