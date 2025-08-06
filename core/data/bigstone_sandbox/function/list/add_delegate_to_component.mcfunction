say add delegate to component
$execute unless data storage bigstone_sandbox:data list.components[{"source":{"UUID":$(UUID)}}] run return fail
$data modify storage bigstone_sandbox:data temp.test.delegates append from storage bigstone_sandbox:data list.components[{"source":{"UUID":$(UUID)}}].data.delegates[]
execute if function bigstone_sandbox:list/component_list/test_is_player_already_delegate run return fail
$data modify storage bigstone_sandbox:data list.components[{"source":{"UUID":$(UUID)}}].data.delegates append value {UUID:[]}
$data modify storage bigstone_sandbox:data list.components[{"source":{"UUID":$(UUID)}}].data.delegates[-1].UUID set from entity @s UUID