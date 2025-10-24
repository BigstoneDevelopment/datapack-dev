#function xolibs:api/playerdata/load

data modify storage bigstone_sandbox:data temp.list append from storage bigstone_sandbox:data components[{"data":{"public":false}}]
function bigstone_sandbox:components/list/get_components/remove_others_private_items with storage xolibs:playerdata storage