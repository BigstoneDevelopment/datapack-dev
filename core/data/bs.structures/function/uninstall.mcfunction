# remove objectives and bossbar
scoreboard objectives remove bigstone_sandbox.vect_x
scoreboard objectives remove bigstone_sandbox.vect_y
scoreboard objectives remove bigstone_sandbox.vect_z
scoreboard objectives remove bigstone_sandbox.commands
bossbar remove bigstone_sandbox.progress

# clear storages
data remove storage bigstone_sandbox:structures blocks
data remove storage bigstone_sandbox:structures id
data remove storage bigstone_sandbox:structures save
data remove storage bigstone_sandbox:structures load
data remove storage bigstone_sandbox:structures prev
data remove storage bigstone_sandbox:structures macro