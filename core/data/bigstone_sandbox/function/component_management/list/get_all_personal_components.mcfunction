#function xolibs:api/playerdata/load

data modify storage bigstone_sandbox:data temp.list set from storage bigstone_sandbox:data list.components
function bigstone_sandbox:component_management/list/get_components/remove_others_private_items with storage xolibs:playerdata storage