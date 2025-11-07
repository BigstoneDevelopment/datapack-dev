function bs.xolibs:api/playerdata/load

data modify storage bigstone_sandbox:playerdata storage.bigstone_sandbox merge value {filter: {include: {}, exclude: {}}}
#tag @s add bigstone_sandbox.default_to_components
tag @s add bigstone_sandbox.info_on_join
tag @s add bigstone_sandbox.sound_effects
#tag @s add bigstone_sandbox.music
tag @s add bigstone_sandbox.placement_highlight
tag @s add bigstone_sandbox.sprint_and_sneak_keybind
#tag @s add bigstone_sandbox.double_sprint_keybind
#tag @s add bigstone_sandbox.double_sneak_keybind
tag @s add bigstone_sandbox.block_shape_highlight

scoreboard players set @s bigstone_sandbox.sprint_cooldown 0
scoreboard players set @s bigstone_sandbox.sneak_cooldown 0


execute unless data storage bigstone_sandbox:playerdata storage.bigstone_sandbox.list.filtered run data modify storage bigstone_sandbox:playerdata storage.bigstone_sandbox.list.filtered set value []
execute unless data storage bigstone_sandbox:playerdata storage.bigstone_sandbox.list.loaded run data modify storage bigstone_sandbox:playerdata storage.bigstone_sandbox.list.loaded set value []

stopsound @s ui
dialog clear @s

function bigstone_sandbox:main/on_join


advancement revoke @s only bigstone_sandbox:item_detect/inactive_in_offhand
advancement revoke @s only bigstone_sandbox:item_detect/inactive_in_hotbar