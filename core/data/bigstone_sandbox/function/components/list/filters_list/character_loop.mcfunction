execute if data storage bigstone_sandbox:data temp.color{"string":""} run return fail

data modify storage bigstone_sandbox:data temp.color.character set string storage bigstone_sandbox:data temp.color.string 0 1
data modify storage bigstone_sandbox:data temp.color.string set string storage bigstone_sandbox:data temp.color.string 1

function bigstone_sandbox:components/list/filters_list/character/lookup with storage bigstone_sandbox:data temp.color
function bigstone_sandbox:components/list/filters_list/character/concat with storage bigstone_sandbox:data temp.color

function bigstone_sandbox:components/list/filters_list/character_loop