data remove storage bigstone_sandbox:components import

$data modify storage bigstone_sandbox:components import set value $(item_data)

function bigstone_sandbox:list/add_public_item

data remove storage bigstone_sandbox:components import

function bigstone_sandbox:dialog/component_menu