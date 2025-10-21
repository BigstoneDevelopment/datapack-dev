# store list
data remove storage bigstone_sandbox:data temp.import_list

$data modify storage bigstone_sandbox:data temp.import_list set value $(item_data)

# process loop
function bigstone_sandbox:menu/dialog_action/import/private/process_step

# cleanup
#data remove storage bigstone_sandbox:data import
#data remove storage bigstone_sandbox:data temp.import_list

function bigstone_sandbox:menu/dialog/component_menu