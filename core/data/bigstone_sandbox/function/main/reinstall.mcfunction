execute as @a run advancement revoke @s everything

scoreboard objectives remove bigstone_sandbox.cast_mode
scoreboard objectives remove bigstone_sandbox.invalid_highlight
scoreboard objectives remove bigstone_sandbox.join
scoreboard objectives remove bigstone_sandbox.last_pos.x
scoreboard objectives remove bigstone_sandbox.last_pos.y
scoreboard objectives remove bigstone_sandbox.last_pos.z
scoreboard objectives remove bigstone_sandbox.loaded_index
scoreboard objectives remove bigstone_sandbox.raycast
scoreboard objectives remove bigstone_sandbox.selected_index
scoreboard objectives remove bigstone_sandbox.sneak_cooldown
scoreboard objectives remove bigstone_sandbox.sprint_cooldown
scoreboard objectives remove bigstone_sandbox.temp

data remove storage xolibs:playerdata storage
data remove storage xolibs:playerdata rom
data remove storage xolibs:playerdata temp

data remove storage bigstone_sandbox:data list
data remove storage bigstone_sandbox:data temp
data remove storage bigstone_sandbox:data is_setup
data remove storage bigstone_sandbox:data args
data remove storage bigstone_sandbox:data settings
data remove storage bigstone_sandbox:data options
data remove storage bigstone_sandbox:data highlight

data remove storage bigstone_sandbox:data characters

reload