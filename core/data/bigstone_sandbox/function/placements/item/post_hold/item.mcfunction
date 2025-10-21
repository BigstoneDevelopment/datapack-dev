#get player id and run macro to delete highlight with player id
tag @s remove highlightMode
execute store result storage bigstone_sandbox:data highlight.SUID int 1 run scoreboard players get @s bs.id
#reset position data for change detection
data remove storage bigstone_sandbox:data temp.raycast.temp.Data
#get last location of cast Position
scoreboard players set @s bigstone_sandbox.last_pos.x 0
scoreboard players set @s bigstone_sandbox.last_pos.y -2147483648
scoreboard players set @s bigstone_sandbox.last_pos.z 0
function bigstone_sandbox:placements/grid/clear_highlight with storage bigstone_sandbox:data highlight