#function xolibs:api/playerdata/load

data modify storage bigstone_sandbox:data temp.list set from storage bigstone_sandbox:data components
function bigstone_sandbox:list/get_components/remove_others_private_items with storage bigstone_sandbox:playerdata storage