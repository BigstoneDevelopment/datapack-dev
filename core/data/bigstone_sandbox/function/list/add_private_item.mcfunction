execute unless entity @s[type=player] run return fail
data remove storage bigstone_sandbox:data temp
scoreboard players reset bool bigstone_sandbox.temp

execute unless function bigstone_sandbox:list/component_list/component_validation run return fail

function bigstone_sandbox:list/component_list/format_data
data modify storage bigstone_sandbox:data temp.component.data.public set value false

data modify storage bigstone_sandbox:data temp.list set from storage bigstone_sandbox:data list.components
#execute if data storage bigstone_sandbox:data list.components[] unless function bigstone_sandbox:list/component_list/test_is_item_in_list run return fail
data modify storage bigstone_sandbox:data list.components prepend from storage bigstone_sandbox:data temp.component

data remove storage bigstone_sandbox:data temp
scoreboard players reset bool bigstone_sandbox.temp

function bigstone_sandbox:list/make_private_filtered_list