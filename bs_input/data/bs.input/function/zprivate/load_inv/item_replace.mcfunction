# handle data
data remove storage bigstone_sandbox:input temp.item
data modify storage bigstone_sandbox:input temp.item set from storage bigstone_sandbox:input temp.inv[-1]

execute unless data storage bigstone_sandbox:input temp.item.count run data modify storage bigstone_sandbox:input temp.item.count set value 0
execute unless data storage bigstone_sandbox:input temp.item.components run data modify storage bigstone_sandbox:input temp.item.components set value {}

# replace item
function bs.input:zprivate/load_inv/item_replace_macro with storage bigstone_sandbox:input temp.item

# cleanup
data remove storage bigstone_sandbox:input temp.item
data remove storage bigstone_sandbox:input temp.inv[-1]

# run again if more items
execute if data storage bigstone_sandbox:input temp.inv[] run function bs.input:zprivate/load_inv/item_replace with storage bigstone_sandbox:input temp.inv[-1]