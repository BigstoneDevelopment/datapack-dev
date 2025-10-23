scoreboard players enable @a bigstone_sandbox_menu
execute if entity @s[tag=bigstone_sandbox.sound_effects] unless score @s bigstone_sandbox_menu matches 902 run playsound minecraft:ui.button.click ui @s ~ ~ ~ 0.3
execute if score @s bigstone_sandbox_menu matches 902 unless entity @s[tag=bigstone_sandbox.sound_effects] run playsound minecraft:ui.button.click ui @s ~ ~ ~ 0.3

execute if score @s bigstone_sandbox_menu matches -1 run return run function bigstone_sandbox:menu/dialog_action/close_menu
execute if score @s bigstone_sandbox_menu matches -2 run return run function bigstone_sandbox:menu/dialog_action/delete
execute if score @s bigstone_sandbox_menu matches -3 run return run function bigstone_sandbox:menu/dialog_action/edit
execute if score @s bigstone_sandbox_menu matches -4 run return run function bigstone_sandbox:menu/dialog_action/export
execute if score @s bigstone_sandbox_menu matches -5 run return run function bigstone_sandbox:menu/dialog_action/filter
execute if score @s bigstone_sandbox_menu matches -6 run return run function bigstone_sandbox:menu/dialog_action/give
execute if score @s bigstone_sandbox_menu matches -7 run return run function bigstone_sandbox:menu/dialog_action/import
execute if score @s bigstone_sandbox_menu matches -8 run return run function bigstone_sandbox:menu/dialog_action/back
execute if score @s bigstone_sandbox_menu matches -9 run return run function bigstone_sandbox:menu/dialog_action/search
execute if score @s bigstone_sandbox_menu matches -10 run return run function bigstone_sandbox:menu/dialog_action/home
execute if score @s bigstone_sandbox_menu matches -11 run return run function bigstone_sandbox:menu/dialog_action/credits
execute if score @s bigstone_sandbox_menu matches -12 run return run function bigstone_sandbox:menu/dialog_action/components
execute if score @s bigstone_sandbox_menu matches -13 run return run function bigstone_sandbox:menu/dialog_action/options
execute if score @s bigstone_sandbox_menu matches -15 run return run function bigstone_sandbox:menu/dialog_action/import/private_from_hand
execute if score @s bigstone_sandbox_menu matches -16 run return run function bigstone_sandbox:menu/dialog_action/import/public_from_hand
execute if score @s bigstone_sandbox_menu matches -18 run return run function bigstone_sandbox:menu/dialog_action/reset_filters
execute if score @s bigstone_sandbox_menu matches -21..-19 run return run function bigstone_sandbox:menu/dialog_action/filter
execute if score @s bigstone_sandbox_menu matches 1000..1999 run return run function bigstone_sandbox:menu/dialog_action/info
execute if score @s bigstone_sandbox_menu matches 2000..2999 run return run function bigstone_sandbox:menu/dialog_action/give_quick
execute if score @s bigstone_sandbox_menu matches 100000..199999 run return run function bigstone_sandbox:menu/dialog_action/toggle_filter

execute if score @s bigstone_sandbox_menu matches 900 run return run function bigstone_sandbox:menu/dialog_action/options/default_to_components
execute if score @s bigstone_sandbox_menu matches 901 run return run function bigstone_sandbox:menu/dialog_action/options/info_on_join
execute if score @s bigstone_sandbox_menu matches 902 run return run function bigstone_sandbox:menu/dialog_action/options/sound_effects
execute if score @s bigstone_sandbox_menu matches 903 run return run function bigstone_sandbox:menu/dialog_action/options/music
execute if score @s bigstone_sandbox_menu matches 904 run return run function bigstone_sandbox:menu/dialog_action/options/placement_highlight
execute if score @s bigstone_sandbox_menu matches 905 run return run function bigstone_sandbox:menu/dialog_action/options/sprint_and_sneak
execute if score @s bigstone_sandbox_menu matches 906 run return run function bigstone_sandbox:menu/dialog_action/options/double_sprint
execute if score @s bigstone_sandbox_menu matches 907 run return run function bigstone_sandbox:menu/dialog_action/options/double_sneak
execute if score @s bigstone_sandbox_menu matches 908 run return run function bigstone_sandbox:menu/dialog_action/options/block_shape_highlight

execute unless entity @s[tag=bigstone_sandbox.admin] run return run function bigstone_sandbox:menu/dialog_action/open_menu

execute if score @s bigstone_sandbox_menu matches -22 run return run function bigstone_sandbox:menu/dialog_action/admin_delete
execute if score @s bigstone_sandbox_menu matches -14 run return run function bigstone_sandbox:menu/dialog_action/admin_options
execute if score @s bigstone_sandbox_menu matches -17 run return run function bigstone_sandbox:menu/dialog_action/admin_import
execute if score @s bigstone_sandbox_menu matches 800 run return run function bigstone_sandbox:menu/dialog_action/admin_options/add
execute if score @s bigstone_sandbox_menu matches 801 run return run function bigstone_sandbox:menu/dialog_action/admin_options/delete
execute if score @s bigstone_sandbox_menu matches 802 run return run function bigstone_sandbox:menu/dialog_action/admin_options/edit
execute if score @s bigstone_sandbox_menu matches 803 run return run function bigstone_sandbox:menu/dialog_action/admin_options/private
execute if score @s bigstone_sandbox_menu matches 804 run return run function bigstone_sandbox:menu/dialog_action/admin_options/reload_message
execute if score @s bigstone_sandbox_menu matches 805 run return run function bigstone_sandbox:menu/dialog_action/admin_options/import_logs
execute if score @s bigstone_sandbox_menu matches 806 run return run function bigstone_sandbox:menu/dialog_action/admin_options/command_feedback
execute if score @s bigstone_sandbox_menu matches 807 run return run function bigstone_sandbox:menu/dialog_action/admin_options/placement_highlight
execute if score @s bigstone_sandbox_menu matches 808 run return run function bigstone_sandbox:menu/dialog_action/admin_options/search
execute if score @s bigstone_sandbox_menu matches 809 run return run function bigstone_sandbox:menu/dialog_action/admin_options/instant_snap

return run function bigstone_sandbox:menu/dialog_action/open_menu

