# Copy the first queued request to "current"
data modify storage bigstone_sandbox:structures current set from storage bigstone_sandbox:structures queue[0]

# remove item from queue
data remove storage bigstone_sandbox:structures queue[0]

# actually run with macros
function item_structures:zprivate/queue/load/do with storage bigstone_sandbox:structures current

# cleanup
data remove storage bigstone_sandbox:structures current
data modify storage bigstone_sandbox:structures processing set value 0b

# if queue has items left, process
execute if data storage bigstone_sandbox:structures queue[0] run function item_structures:zprivate/queue/load/process