data remove storage bigstone_sandbox:data temp.body
data remove storage bigstone_sandbox:data temp.source_data

data modify storage bigstone_sandbox:data temp.source_data set from storage bigstone_sandbox:structures save

function bigstone_sandbox:menu/dialog/saved_component/body_init
function bigstone_sandbox:menu/dialog/saved_component/run_dialog with storage bigstone_sandbox:data temp

data remove storage bigstone_sandbox:data temp.body
data remove storage bigstone_sandbox:data temp.source_data