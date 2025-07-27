# uses score @s bigstone_sandbox.loaded_index as input

function xolibs:api/playerdata/load
data remove storage bigstone_sandbox:components temp

data remove storage xolibs:playerdata storage.bigstone_sandbox.list.loaded[]
execute store result storage bigstone_sandbox:components temp.loaded_index int 1 run scoreboard players get @s bigstone_sandbox.loaded_index
function bigstone_sandbox:list/loaded_list/get_items with storage bigstone_sandbox:components temp

data remove storage bigstone_sandbox:components temp