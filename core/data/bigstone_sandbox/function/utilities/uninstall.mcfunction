tellraw @s ["",{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.cleaning_up","fallback":"Cleaning up. Please wait...","color":"gray"}]

scoreboard objectives remove bigstone_sandbox_menu
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
scoreboard objectives remove consts

data remove storage xolibs:playerdata player
data remove storage xolibs:playerdata storage
data remove storage xolibs:playerdata rom
data remove storage xolibs:playerdata temp

data remove storage bigstone_sandbox:data newUUID
data remove storage bigstone_sandbox:data list
data remove storage bigstone_sandbox:data temp
data remove storage bigstone_sandbox:data is_setup
data remove storage bigstone_sandbox:data args
data remove storage bigstone_sandbox:data settings
data remove storage bigstone_sandbox:data options
data remove storage bigstone_sandbox:data highlight

data remove storage bigstone_sandbox:data characters

tag @a remove bigstone_sandbox.admin
tag @s remove bigstone_sandbox.default_to_components
tag @s remove bigstone_sandbox.info_on_join
tag @s remove bigstone_sandbox.sound_effects
tag @s remove bigstone_sandbox.music
tag @s remove bigstone_sandbox.placement_highlight
tag @s remove bigstone_sandbox.sprint_and_sneak_keybind
tag @s remove bigstone_sandbox.double_sprint_keybind
tag @s remove bigstone_sandbox.double_sneak_keybind
tag @s remove bigstone_sandbox.block_shape_highlight
tag @s remove bigstone_sandbox.last_filter_menu.tag
tag @s remove bigstone_sandbox.last_filter_menu.port
tag @s remove bigstone_sandbox.last_filter_menu.creator

tellraw @s ["",{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.uninstalled","fallback":"Done! You can remove the datapack now.","color":"gray"}]
