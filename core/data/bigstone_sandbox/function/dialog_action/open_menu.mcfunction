execute if entity @s[tag=bigstone_sandbox.music] run function bigstone_sandbox:dialog_action/music/start

execute if entity @s[tag=bigstone_sandbox.default_to_components] run function bigstone_sandbox:dialog/component_menu
execute unless entity @s[tag=bigstone_sandbox.default_to_components] run dialog show @s bigstone_sandbox:home