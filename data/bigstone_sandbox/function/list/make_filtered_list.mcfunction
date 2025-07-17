# uses storage xolibs:playerdata player.bigstone_sandbox.filter as input

function xolibs:api/playerdata/load

data remove storage xolibs:playerdata player.bigstone_sandbox.filtered_list[]
function bigstone_sandbox:list/filtered_list/get_items with storage xolibs:playerdata player.bigstone_sandbox.filter

function bigstone_sandbox:list/make_loaded_list
