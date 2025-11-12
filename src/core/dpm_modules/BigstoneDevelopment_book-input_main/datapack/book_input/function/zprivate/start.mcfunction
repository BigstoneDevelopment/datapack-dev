# load playerdata
function xolibs:api/playerdata/load

# save prompt
$data modify storage bigstone_sandbox:playerdata storage.bigstone_sandbox_input.prompt set value '$(prompt)'

# save inv
data modify storage bigstone_sandbox:playerdata storage.bigstone_sandbox_input.inv set from entity @s Inventory

# give item and clear inv
function book_input:zprivate/fix

# stop interactions
function book_input:zprivate/stop_interactions/start

# give tag
tag @s add bigstone_sandbox.input