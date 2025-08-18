execute unless entity @s[type=player] run return fail
data remove storage bigstone_sandbox:data temp
scoreboard players reset bool bigstone_sandbox.temp

execute unless function bigstone_sandbox:components/list/component_list/component_validation run return fail

function bigstone_sandbox:components/list/component_list/format_data
data modify storage bigstone_sandbox:data temp.component.data.public set value true

execute if function bigstone_sandbox:components/list/component_list/test_is_uuid_in_list run return run \
  execute unless function bigstone_sandbox:components/list/component_list/test_does_source_differ_from_existing run return run \
  function bigstone_sandbox:components/list/component_list/add_manager_and_make_component_public

data modify storage bigstone_sandbox:data list.components prepend from storage bigstone_sandbox:data temp.component

data remove storage bigstone_sandbox:data temp
scoreboard players reset bool bigstone_sandbox.temp

execute as @a run function bigstone_sandbox:components/list/make_private_filtered_list
execute as @a run function bigstone_sandbox:components/list/make_filters_list

return 1