scoreboard players enable @a bigstone_sandbox_menu
execute if entity @s[tag=bigstone_sandbox.sound_effects] unless score @s bigstone_sandbox_menu matches 902 run playsound minecraft:ui.button.click ui @s ~ ~ ~ 0.3
execute if score @s bigstone_sandbox_menu matches 902 unless entity @s[tag=bigstone_sandbox.sound_effects] run playsound minecraft:ui.button.click ui @s ~ ~ ~ 0.3

execute if score @s bigstone_sandbox_menu matches -1 run return run function bigstone_sandbox:dialog_action/close_menu
execute if score @s bigstone_sandbox_menu matches -2 run return run function bigstone_sandbox:dialog_action/delete
execute if score @s bigstone_sandbox_menu matches -3 run return run function bigstone_sandbox:dialog_action/edit
execute if score @s bigstone_sandbox_menu matches -4 run return run function bigstone_sandbox:dialog_action/export
execute if score @s bigstone_sandbox_menu matches -5 run return run function bigstone_sandbox:dialog_action/filter
execute if score @s bigstone_sandbox_menu matches -6 run return run function bigstone_sandbox:dialog_action/give
execute if score @s bigstone_sandbox_menu matches -7 run return run function bigstone_sandbox:dialog_action/import
execute if score @s bigstone_sandbox_menu matches -8 run return run function bigstone_sandbox:dialog_action/back
execute if score @s bigstone_sandbox_menu matches -9 run return run function bigstone_sandbox:dialog_action/search
execute if score @s bigstone_sandbox_menu matches -10 run return run function bigstone_sandbox:dialog_action/home
execute if score @s bigstone_sandbox_menu matches -11 run return run function bigstone_sandbox:dialog_action/credits
execute if score @s bigstone_sandbox_menu matches -12 run return run function bigstone_sandbox:dialog_action/components
execute if score @s bigstone_sandbox_menu matches -13 run return run function bigstone_sandbox:dialog_action/options
execute if score @s bigstone_sandbox_menu matches 1000..1999 run return run function bigstone_sandbox:dialog_action/info
execute if score @s bigstone_sandbox_menu matches 2000..2999 run return run function bigstone_sandbox:dialog_action/give

execute if score @s bigstone_sandbox_menu matches 900 run return run function bigstone_sandbox:dialog_action/options/default_to_components
execute if score @s bigstone_sandbox_menu matches 901 run return run function bigstone_sandbox:dialog_action/options/info_on_join
execute if score @s bigstone_sandbox_menu matches 902 run return run function bigstone_sandbox:dialog_action/options/sound_effects
execute if score @s bigstone_sandbox_menu matches 903 run return run function bigstone_sandbox:dialog_action/options/music
execute if score @s bigstone_sandbox_menu matches 904 run return run function bigstone_sandbox:dialog_action/options/placement_highlight
execute if score @s bigstone_sandbox_menu matches 905 run return run function bigstone_sandbox:dialog_action/options/sprint_and_sneak
execute if score @s bigstone_sandbox_menu matches 906 run return run function bigstone_sandbox:dialog_action/options/double_sprint
execute if score @s bigstone_sandbox_menu matches 907 run return run function bigstone_sandbox:dialog_action/options/double_sneak

execute unless entity @s[tag=bigstone_sandbox.admin] run return run function bigstone_sandbox:dialog_action/open_menu

execute if score @s bigstone_sandbox_menu matches -14 run return run function bigstone_sandbox:dialog_action/admin_options

return run function bigstone_sandbox:dialog_action/open_menu