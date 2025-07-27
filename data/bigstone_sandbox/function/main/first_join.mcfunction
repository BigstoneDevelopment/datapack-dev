function xolibs:api/playerdata/load

data modify storage xolibs:playerdata storage.bigstone_sandbox merge value {filter: {include: {}, exclude: {}}}
#tag @s add bigstone_sandbox.default_to_components
tag @s add bigstone_sandbox.info_on_join
tag @s add bigstone_sandbox.sound_effects
#tag @s add bigstone_sandbox.music
tag @s add bigstone_sandbox.placement_highlight
tag @s add bigstone_sandbox.sprint_and_sneak_keybind
#tag @s add bigstone_sandbox.double_sprint_keybind
#tag @s add bigstone_sandbox.double_sneak_keybind

scoreboard players set @s bigstone_sandbox.sprint_cooldown 0
scoreboard players set @s bigstone_sandbox.sneak_cooldown 0

execute unless data storage xolibs:playerdata storage.bigstone_sandbox.list.components run data modify storage xolibs:playerdata storage.bigstone_sandbox.list.components set value []

function bigstone_sandbox:main/on_join