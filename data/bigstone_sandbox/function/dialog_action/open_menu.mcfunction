stopsound @s music
playsound minecraft:custom.menu.blooper_nova master @s ~ ~ ~

execute unless score @s bigstone_sandbox.last_dialog_page matches -12 run dialog show @s bigstone_sandbox:home
execute if score @s bigstone_sandbox.last_dialog_page matches -12 run function bigstone_sandbox:dialog/component_menu