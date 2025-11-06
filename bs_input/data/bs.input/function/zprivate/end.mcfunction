# clear inv
clear @s

# load inv
function bs.xolibs:api/playerdata/load
data modify entity @s Inventory. set from storage bigstone_sandbox:playerdata storage.bigstone_sandbox_input.inv
item replace entity @s container.0 with 