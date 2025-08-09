
execute unless entity @s[tag=bigstone_sandbox.double_sprint_keybind] run return fail
advancement revoke @s only bigstone_sandbox:on_unsprint

execute if score @s bigstone_sandbox.sprint_cooldown matches 1.. run function bigstone_sandbox:menu/dialog_action/open_menu
scoreboard players set @s bigstone_sandbox.sprint_cooldown 6