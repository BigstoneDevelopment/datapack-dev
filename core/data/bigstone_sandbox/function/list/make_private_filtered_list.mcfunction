# uses storage xolibs:playerdata storage.bigstone_sandbox.filter as input
function xolibs:api/playerdata/load

data remove storage xolibs:playerdata storage.bigstone_sandbox.list.filtered[]
function bigstone_sandbox:list/filtered_list/get_items with storage xolibs:playerdata storage.bigstone_sandbox.filter
function bigstone_sandbox:list/filtered_list/remove_others_private_items with storage xolibs:playerdata storage

function bigstone_sandbox:list/make_private_loaded_list