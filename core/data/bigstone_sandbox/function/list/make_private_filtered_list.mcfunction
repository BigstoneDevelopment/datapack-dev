# uses storage bigstone_sandbox:playerdata storage.bigstone_sandbox.filter as input
data remove storage bigstone_sandbox:data temp.list
function xolibs:api/playerdata/load

data remove storage bigstone_sandbox:playerdata storage.bigstone_sandbox.list.filtered[]
#function bigstone_sandbox:list/filtered_list/get_items with storage bigstone_sandbox:playerdata storage.bigstone_sandbox.filter
#function bigstone_sandbox:list/get_components/remove_others_private_items with storage bigstone_sandbox:playerdata storage
function bigstone_sandbox:list/get_all_personal_components
data modify storage bigstone_sandbox:playerdata storage.bigstone_sandbox.list.filtered set from storage bigstone_sandbox:data temp.list

function bigstone_sandbox:list/filtered_list/mark_saved_components with storage bigstone_sandbox:playerdata storage

data remove storage bigstone_sandbox:data temp.list
function bigstone_sandbox:list/make_private_loaded_list