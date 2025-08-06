execute unless entity @s[type=player] run return run say entity is not a player
data remove storage bigstone_sandbox:data temp
scoreboard players reset bool bigstone_sandbox.temp

execute unless function bigstone_sandbox:list/component_list/component_validation run return run say invalid data

function bigstone_sandbox:list/component_list/format_data
data modify storage bigstone_sandbox:data temp.component.data.public set value false

execute if function bigstone_sandbox:list/component_list/test_is_uuid_in_list run return run \
  execute unless function bigstone_sandbox:list/component_list/test_does_source_differ_from_existing run return run \
  function bigstone_sandbox:list/add_delegate_to_component with storage bigstone_sandbox:data temp.component.source

data modify storage bigstone_sandbox:data list.components prepend from storage bigstone_sandbox:data temp.component

data remove storage bigstone_sandbox:data temp
scoreboard players reset bool bigstone_sandbox.temp

function bigstone_sandbox:list/make_private_filtered_list