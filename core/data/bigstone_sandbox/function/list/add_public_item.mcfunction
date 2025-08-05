data remove storage bigstone_sandbox:data temp
scoreboard players reset bool bigstone_sandbox.temp

execute unless function bigstone_sandbox:list/component_list/component_validation run return run say invalid component

function bigstone_sandbox:list/component_list/format_data
data modify storage bigstone_sandbox:data temp.component.data.public set value true

function bigstone_sandbox:list/get_public_components
execute if function bigstone_sandbox:list/component_list/test_is_uuid_in_list run return run say uuid in use
data modify storage bigstone_sandbox:data temp.list[].source.UUID set from storage bigstone_sandbox:data temp.component.source.UUID
execute if data storage bigstone_sandbox:data temp.list[] unless function bigstone_sandbox:list/component_list/test_is_source_in_list run return run say component already exists
data modify storage bigstone_sandbox:data list.components prepend from storage bigstone_sandbox:data temp.component

data remove storage bigstone_sandbox:data temp
scoreboard players reset bool bigstone_sandbox.temp

function bigstone_sandbox:list/make_private_filtered_list