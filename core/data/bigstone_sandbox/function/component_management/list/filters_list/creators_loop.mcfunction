execute unless data storage bigstone_sandbox:data temp.strings[] run return fail
data remove storage bigstone_sandbox:data temp.color
data remove storage bigstone_sandbox:data temp.entry

data modify storage bigstone_sandbox:data temp.entry set value \
{ \
  "type": "creator", \
}

data modify storage bigstone_sandbox:data temp.entry.value set from storage bigstone_sandbox:data temp.strings[0]

data modify storage bigstone_sandbox:data temp.color.string set from storage bigstone_sandbox:data temp.entry.value
data modify storage bigstone_sandbox:data temp.color.seed set value ""
function bigstone_sandbox:component_management/list/filters_list/character_loop
function bigstone_sandbox:component_management/list/filters_list/generate_color with storage bigstone_sandbox:data temp.color
function #bs.color:int_to_hex with storage bigstone_sandbox:data temp.color
data modify storage bigstone_sandbox:data temp.entry.color set from storage bs:out color.int_to_hex
data modify storage bigstone_sandbox:data temp.filters append from storage bigstone_sandbox:data temp.entry

data remove storage bigstone_sandbox:data temp.strings[0]

function bigstone_sandbox:component_management/list/filters_list/creators_loop