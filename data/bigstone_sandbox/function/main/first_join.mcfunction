function xolibs:api/playerdata/load

data modify storage xolibs:playerdata player.bigstone_sandbox merge value {filter: {include: {}, exclude: {}}}
#tag @s add bigstone_sandbox.default_to_components
tag @s add bigstone_sandbox.info_on_join
tag @s add bigstone_sandbox.sound_effects
#tag @s add bigstone_sandbox.music
tag @s add bigstone_sandbox.placement_highlight


function bigstone_sandbox:main/on_join