# get last item from list
data remove storage bigstone_sandbox:data import
data modify storage bigstone_sandbox:data import set from storage bigstone_sandbox:data import_list[-1]

# run add function
function bigstone_sandbox:components/list/add_public_item

# loop again
data remove storage bigstone_sandbox:data import_list[-1]
execute if data storage bigstone_sandbox:data import_list[] run function bigstone_sandbox:menu/dialog_action/import/public/process_step