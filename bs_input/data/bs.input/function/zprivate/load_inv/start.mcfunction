# clean data
data remove storage bigstone_sandbox:input temp.item
data remove storage bigstone_sandbox:input temp.inv

# temp data
function bs.xolibs:api/playerdata/load
data modify storage bigstone_sandbox:input temp.inv set from storage bigstone_sandbox:playerdata storage.bigstone_sandbox_input.inv

# item replace
function bs.input:zprivate/load_inv/item_replace with storage bigstone_sandbox:input temp.inv[-1]

# clean up
data remove storage bigstone_sandbox:input temp.item
data remove storage bigstone_sandbox:input temp.inv