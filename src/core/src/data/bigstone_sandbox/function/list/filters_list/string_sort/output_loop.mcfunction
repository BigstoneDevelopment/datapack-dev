data modify storage bigstone_sandbox:data temp.string_sort.output append string storage bigstone_sandbox:data temp.string_sort.mem.split[0] 2 -2
data modify storage bigstone_sandbox:data temp.string_sort.mem.char set string storage bigstone_sandbox:data temp.string_sort.output[-1] 0 1
execute if data storage bigstone_sandbox:data temp.string_sort.mem{char:'"'} run data modify storage bigstone_sandbox:data temp.string_sort.output[-1] set string storage bigstone_sandbox:data temp.string_sort.output[-1] 1 -1
data remove storage bigstone_sandbox:data temp.string_sort.mem.split[0]
execute if data storage bigstone_sandbox:data temp.string_sort.mem.split[0] run function bigstone_sandbox:list/filters_list/string_sort/output_loop