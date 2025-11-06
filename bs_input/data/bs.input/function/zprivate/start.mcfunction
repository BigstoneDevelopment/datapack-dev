# save inv
function bs.xolibs:api/playerdata/load
data modify storage bigstone_sandbox:playerdata storage.bigstone_sandbox_input.inv set from entity @s Inventory

# clear inv
clear @s

# give book
item replace entity @s weapon.mainhand with writable_book[custom_data={bigstone_sandbox_input: 1b}]