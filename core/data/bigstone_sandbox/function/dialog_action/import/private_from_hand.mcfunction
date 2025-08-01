data remove storage bigstone_sandbox:data import

data modify storage bigstone_sandbox:data import set from entity @s SelectedItem.components."minecraft:custom_data".bigstone_sandbox

function bigstone_sandbox:list/add_private_item

data remove storage bigstone_sandbox:data import

function bigstone_sandbox:dialog/component_menu