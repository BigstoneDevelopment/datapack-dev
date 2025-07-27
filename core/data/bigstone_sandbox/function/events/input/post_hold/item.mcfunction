#get player id and run macro to delete highlight with player id
tag @s remove highlightMode
tag @s remove highlightModePaste
tag @s remove highlightModeSelect
execute store result storage bigstone_sandbox highlight.SUID int 1 run scoreboard players get @s bs.id
#reset position data for change detection
data remove storage bigstone_sandbox raycast.temp.Data
function bigstone_sandbox:grid/clear_highlight with storage bigstone_sandbox highlight