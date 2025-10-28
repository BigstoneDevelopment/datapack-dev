# remove saver and loader entities
kill @e[tag=bigstone_sandbox.saver]
kill @e[tag=bigstone_sandbox.loader]

# display cancel info
title @s actionbar [{"text":"Process Canceled, ","color":"red"},{"text":"memory may be corrupted!","color":"dark_red"}]

# hide bossbar
bossbar set bigstone_sandbox.progress visible false

return 1