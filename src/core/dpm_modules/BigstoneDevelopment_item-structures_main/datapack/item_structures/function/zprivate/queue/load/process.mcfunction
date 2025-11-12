# check if already processing
execute if data storage bigstone_sandbox:structures {processing:1b} run return fail
data modify storage bigstone_sandbox:structures processing set value 1b

# get the next queued item
execute if data storage bigstone_sandbox:structures queue[0] run function item_structures:zprivate/queue/load/item