# Detect when the minecart is broken
execute if entity @s[tag=bs_has_menu_item] unless entity @e[type=minecraft:chest_minecart,tag=bs_menu_container,sort=nearest,limit=1] as @s at @s run function bigstone_sandbox:menu/minecart/destroyed

# Detect when started holding item
execute if entity @s[predicate=bigstone_sandbox:menu/player_is_holding_menu_item,tag=!bs_has_menu_item] run function bigstone_sandbox:menu/minecart/initialize

# Remove tag when not holding
execute if entity @s[predicate=!bigstone_sandbox:menu/player_is_holding_menu_item,tag=bs_has_menu_item] run schedule function bigstone_sandbox:menu/container/clear 2t
execute if entity @s[predicate=!bigstone_sandbox:menu/player_is_holding_menu_item,tag=bs_has_menu_item] run tag @s remove bs_has_menu_item