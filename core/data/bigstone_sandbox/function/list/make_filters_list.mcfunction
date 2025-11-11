
function xolibs:api/playerdata/load
data remove storage bigstone_sandbox:data temp.old_filters
data remove storage bigstone_sandbox:data temp.strings
data remove storage bigstone_sandbox:data temp.filters

data modify storage bigstone_sandbox:data temp.old_filters set from storage bigstone_sandbox:playerdata storage.bigstone_sandbox.list.filters
data remove storage bigstone_sandbox:playerdata storage.bigstone_sandbox.list.filters

function bigstone_sandbox:list/get_all_personal_components
data modify storage bigstone_sandbox:data temp.strings set value []

data modify storage bigstone_sandbox:data temp.strings append from storage bigstone_sandbox:data temp.list[].source.tags[]
function bigstone_sandbox:list/filters_list/sort_and_remove_duplicates
function bigstone_sandbox:list/filters_list/tags_loop

data modify storage bigstone_sandbox:data temp.strings append from storage bigstone_sandbox:data temp.list[].source.ports.north[]
data modify storage bigstone_sandbox:data temp.strings append from storage bigstone_sandbox:data temp.list[].source.ports.south[]
data modify storage bigstone_sandbox:data temp.strings append from storage bigstone_sandbox:data temp.list[].source.ports.east[]
data modify storage bigstone_sandbox:data temp.strings append from storage bigstone_sandbox:data temp.list[].source.ports.west[]
data modify storage bigstone_sandbox:data temp.strings append from storage bigstone_sandbox:data temp.list[].source.ports.top[]
data modify storage bigstone_sandbox:data temp.strings append from storage bigstone_sandbox:data temp.list[].source.ports.bottom[]
function bigstone_sandbox:list/filters_list/sort_and_remove_duplicates
function bigstone_sandbox:list/filters_list/ports_loop

data modify storage bigstone_sandbox:data temp.strings append from storage bigstone_sandbox:data temp.list[].source.creator
function bigstone_sandbox:list/filters_list/sort_and_remove_duplicates
function bigstone_sandbox:list/filters_list/creators_loop

function bigstone_sandbox:list/filters_list/filters_override

data modify storage bigstone_sandbox:playerdata storage.bigstone_sandbox.list.filters set from storage bigstone_sandbox:data temp.filters

data remove storage bigstone_sandbox:data temp.old_filters
data remove storage bigstone_sandbox:data temp.strings
data remove storage bigstone_sandbox:data temp.filters