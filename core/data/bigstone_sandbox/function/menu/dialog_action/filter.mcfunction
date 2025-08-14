execute if score @s bigstone_sandbox_menu matches -5 if entity @s[tag=bigstone_sandbox.last_filter_menu.port] run return run function bigstone_sandbox:menu/dialog/filter_ports
execute if score @s bigstone_sandbox_menu matches -5 if entity @s[tag=bigstone_sandbox.last_filter_menu.creator] run return run function bigstone_sandbox:menu/dialog/filter_creators
execute if score @s bigstone_sandbox_menu matches -5 run return run function bigstone_sandbox:menu/dialog/filter_tags

tag @s remove bigstone_sandbox.last_filter_menu.tag
tag @s remove bigstone_sandbox.last_filter_menu.port
tag @s remove bigstone_sandbox.last_filter_menu.creator

execute if score @s bigstone_sandbox_menu matches -19 run function bigstone_sandbox:menu/dialog/filter_tags
execute if score @s bigstone_sandbox_menu matches -20 run function bigstone_sandbox:menu/dialog/filter_ports
execute if score @s bigstone_sandbox_menu matches -21 run function bigstone_sandbox:menu/dialog/filter_creators