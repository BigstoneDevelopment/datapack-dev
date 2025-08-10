data remove storage bigstone_sandbox:data import

$data modify storage bigstone_sandbox:data import set value $(item_data)

function bigstone_sandbox:components/list/add_public_item

data remove storage bigstone_sandbox:data import

function bigstone_sandbox:menu/dialog/component_menu