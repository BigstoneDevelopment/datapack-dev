data remove storage bigstone_sandbox:data import

data modify storage bigstone_sandbox:data import set from entity @s SelectedItem.components."minecraft:custom_data".bigstone_sandbox.source
function bigstone_sandbox:components/list/add_public_item

data remove storage bigstone_sandbox:data import

function bigstone_sandbox:menu/dialog/component_menu