execute unless data storage bigstone_sandbox:data temp.strings[] run return fail
data remove storage bigstone_sandbox:data temp.color
data remove storage bigstone_sandbox:data temp.entry

data modify storage bigstone_sandbox:data temp.entry set value \
{ \
  "type": "creator", \
  "include": false, \
  "exclude": false \
}
data modify storage bigstone_sandbox:data temp.entry.value set from storage bigstone_sandbox:data temp.strings[0]
function bigstone_sandbox:components/list/filters_list/merge_old_filter with storage bigstone_sandbox:data temp.entry
execute unless data storage bigstone_sandbox:data temp.entry.color run function bigstone_sandbox:components/list/filters_list/generate_color
execute store result storage bigstone_sandbox:data temp.entry.index int 1 if data storage bigstone_sandbox:data temp.filters[]
execute if data storage bigstone_sandbox:data temp.entry{"index": 100000} run return fail

data modify storage bigstone_sandbox:data temp.filters append from storage bigstone_sandbox:data temp.entry

data remove storage bigstone_sandbox:data temp.strings[0]

function bigstone_sandbox:components/list/filters_list/creators_loop