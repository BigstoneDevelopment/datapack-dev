dialog clear @a

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
scoreboard objectives remove bigstone_sandbox.temp.import_total
scoreboard objectives remove bigstone_sandbox.temp.import_percent
scoreboard objectives remove bigstone_sandbox.temp.import_done
scoreboard objectives remove consts

data remove storage xolibs:playerdata player
data remove storage xolibs:playerdata storage
data remove storage xolibs:playerdata rom
data remove storage xolibs:playerdata temp

data remove storage bigstone_sandbox:data newUUID
data remove storage bigstone_sandbox:data components
data remove storage bigstone_sandbox:data temp
data remove storage bigstone_sandbox:data is_setup
data remove storage bigstone_sandbox:data args
data remove storage bigstone_sandbox:data settings
data remove storage bigstone_sandbox:data options
data remove storage bigstone_sandbox:data highlight
data remove storage bigstone_sandbox:data import
data remove storage bigstone_sandbox:data highlight
data remove storage bigstone_sandbox:data temp

data remove storage bigstone_sandbox:data characters

tag @a remove bigstone_sandbox.admin
tag @a remove bigstone_sandbox.default_to_components
tag @a remove bigstone_sandbox.info_on_join
tag @a remove bigstone_sandbox.sound_effects
tag @a remove bigstone_sandbox.music
tag @a remove bigstone_sandbox.placement_highlight
tag @a remove bigstone_sandbox.sprint_and_sneak_keybind
tag @a remove bigstone_sandbox.double_sprint_keybind
tag @a remove bigstone_sandbox.double_sneak_keybind
tag @a remove bigstone_sandbox.block_shape_highlight
tag @a remove bigstone_sandbox.last_filter_menu.tag
tag @a remove bigstone_sandbox.last_filter_menu.port
tag @a remove bigstone_sandbox.last_filter_menu.creator
tag @a remove bigstone_sandbox.highlightMode

forceload remove 29999984 29999984 29999999 29999999

#kill @e[tag=bigstone_sandbox.component_break_detector]

# lib uninstall
function item_structures:uninstall

reload