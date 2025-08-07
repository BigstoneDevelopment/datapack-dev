execute store success score bool bigstone_sandbox.temp run data modify storage bigstone_sandbox:data temp.list[0].source set from storage bigstone_sandbox:data temp.component.source
execute if score bool bigstone_sandbox.temp matches 0 run return fail
data remove storage bigstone_sandbox:data temp.list[0]
execute if data storage bigstone_sandbox:data temp.list[0] run return run function bigstone_sandbox:list/component_list/test_is_source_in_list
return 1