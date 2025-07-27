data remove storage bigstone_sandbox:components import

data modify storage bigstone_sandbox:components import set from entity @s SelectedItem.components."minecraft:custom_data".bigstone_sandbox

function bigstone_sandbox:list/add_private_item

data remove storage bigstone_sandbox:components import

function bigstone_sandbox:dialog/component_menu