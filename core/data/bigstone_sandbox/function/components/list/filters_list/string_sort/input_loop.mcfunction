$data modify storage bigstone_sandbox:data temp.string_sort.mem.obj."$(key)" set value "','"
data modify storage bigstone_sandbox:data temp.string_sort.mem.key set from storage bigstone_sandbox:data temp.string_sort.mem.queue[0]
data remove storage bigstone_sandbox:data temp.string_sort.mem.queue[0]
execute if data storage bigstone_sandbox:data temp.string_sort.mem.queue[0] run function bigstone_sandbox:components/list/filters_list/string_sort/input_loop with storage bigstone_sandbox:data temp.string_sort.mem