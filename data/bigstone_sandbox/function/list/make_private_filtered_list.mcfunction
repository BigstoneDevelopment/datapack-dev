# uses storage xolibs:playerdata player.bigstone_sandbox.filter as input

say make filtered list

function xolibs:api/playerdata/load

data remove storage xolibs:playerdata player.bigstone_sandbox.list.filtered[]
function bigstone_sandbox:list/filtered_list/get_items with storage xolibs:playerdata player.bigstone_sandbox.filter

function bigstone_sandbox:list/make_private_loaded_list
