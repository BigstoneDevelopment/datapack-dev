# remove tag
tag @s remove bigstone_sandbox.input

# store data
function xolibs:api/playerdata/load
data remove storage bigstone_sandbox:playerdata storage.bigstone_sandbox_input.out
data modify storage bigstone_sandbox:playerdata storage.bigstone_sandbox_input.temp set from entity @s SelectedItem.components."minecraft:writable_book_content".pages
function bs.input:zprivate/get_data/loop
data remove storage bigstone_sandbox:playerdata storage.bigstone_sandbox_input.temp

function bs.input:zprivate/end