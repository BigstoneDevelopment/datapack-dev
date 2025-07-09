tp @s ~ ~-99999.0075 ~
execute at @s run function bigstone_sandbox:menu/minecart/summoncart

# Clear inv of items
clear @s *[minecraft:custom_data~{menu:{}}]
clear @s *[minecraft:custom_data~{bs_has_structure:true}]