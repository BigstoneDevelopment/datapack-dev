
execute summon marker run function bigstone_sandbox:components/list/filters_list/remove_duplicates

data modify storage bigstone_sandbox:data temp.string_sort.mem set value {obj:{}}
data modify storage bigstone_sandbox:data temp.string_sort.mem.queue set from storage bigstone_sandbox:data temp.strings
data modify storage bigstone_sandbox:data temp.string_sort.mem.key set from storage bigstone_sandbox:data temp.string_sort.mem.queue[0]
execute if data storage bigstone_sandbox:data temp.string_sort.mem.queue[0] run function bigstone_sandbox:components/list/filters_list/string_sort/input_loop with storage bigstone_sandbox:data temp.string_sort.mem
function bigstone_sandbox:components/list/filters_list/string_sort/input_loop with storage bigstone_sandbox:data temp.string_sort.mem
execute summon item_display run function bigstone_sandbox:components/list/filters_list/string_sort/item
function bigstone_sandbox:components/list/filters_list/string_sort/parse with storage bigstone_sandbox:data temp.string_sort.mem
data modify storage bigstone_sandbox:data temp.string_sort.output set value []
data remove storage bigstone_sandbox:data temp.string_sort.mem.split[-1]
data modify storage bigstone_sandbox:data temp.string_sort.output append string storage bigstone_sandbox:data temp.string_sort.mem.split[0] 1 -2
data remove storage bigstone_sandbox:data temp.string_sort.mem.split[0]
data modify storage bigstone_sandbox:data temp.string_sort.mem.char set string storage bigstone_sandbox:data temp.string_sort.output[0] 0 1
execute if data storage bigstone_sandbox:data temp.string_sort.mem{char:'"'} run data modify storage bigstone_sandbox:data temp.string_sort.output[0] set string storage bigstone_sandbox:data temp.string_sort.output[0] 1 -1
execute if data storage bigstone_sandbox:data temp.string_sort.mem.split[0] run function bigstone_sandbox:components/list/filters_list/string_sort/output_loop

data remove storage bigstone_sandbox:data temp.strings
data modify storage bigstone_sandbox:data temp.strings set from storage bigstone_sandbox:data temp.string_sort.output
data remove storage bigstone_sandbox:data temp.string_sort
