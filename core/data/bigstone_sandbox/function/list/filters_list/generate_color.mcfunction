data modify storage bigstone_sandbox:data temp.color.string set from storage bigstone_sandbox:data temp.entry.value
data modify storage bigstone_sandbox:data temp.color.seed set value ""
function bigstone_sandbox:list/filters_list/character_loop
function bigstone_sandbox:list/filters_list/generate_color_macros with storage bigstone_sandbox:data temp.color
function #bs.color:int_to_hex with storage bigstone_sandbox:data temp.color
data modify storage bigstone_sandbox:data temp.entry.color set from storage bs:out color.int_to_hex