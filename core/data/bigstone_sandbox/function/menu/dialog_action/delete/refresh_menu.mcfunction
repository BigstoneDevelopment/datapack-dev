# check if component still exists
$execute if data storage bigstone_sandbox:data components[{"source":{"UUID":$(component_uuid)}}] run return run function bigstone_sandbox:menu/dialog/component_info

# if component was deleted, go back to component menu
function bigstone_sandbox:menu/dialog/component_menu