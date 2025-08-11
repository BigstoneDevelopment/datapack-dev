
execute unless entity @s[tag=bigstone_sandbox.double_sneak_keybind] run return fail
advancement revoke @s only bigstone_sandbox:keybind/on_unsneak

execute if score @s bigstone_sandbox.sneak_cooldown matches 1.. run function bigstone_sandbox:menu/dialog_action/open_menu
scoreboard players set @s bigstone_sandbox.sneak_cooldown 6