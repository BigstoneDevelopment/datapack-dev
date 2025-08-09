$execute unless data storage bigstone_sandbox:data list.components[{"source":{"UUID":$(UUID)}}] run return fail
$data modify storage bigstone_sandbox:data temp.test.managers append from storage bigstone_sandbox:data list.components[{"source":{"UUID":$(UUID)}}].data.managers[]
execute if function bigstone_sandbox:component_management/list/component_list/test_is_player_already_manager run return fail
$data modify storage bigstone_sandbox:data list.components[{"source":{"UUID":$(UUID)}}].data.managers append value {UUID:[]}
$data modify storage bigstone_sandbox:data list.components[{"source":{"UUID":$(UUID)}}].data.managers[-1].UUID set from entity @s UUID