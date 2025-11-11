# debug print
tellraw @s {storage:"bigstone_sandbox:playerdata",nbt:"storage.bigstone_sandbox_input.out",color:"green"}

# clear inv
clear @s

# clear actionbar
title @s actionbar ''

# allow interactions
function book_input:zprivate/stop_interactions/stop

# load inv
function book_input:zprivate/load_inv/start