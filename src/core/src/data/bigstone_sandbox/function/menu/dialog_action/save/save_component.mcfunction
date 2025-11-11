# check if player is already a manager
$execute if data storage bigstone_sandbox:data components[{"source":{"UUID":$(component_uuid)}}].data.managers[{"UUID":$(player_uuid)}] run return fail

# add player as manager
$data modify storage bigstone_sandbox:data components[{"source":{"UUID":$(component_uuid)}}].data.managers append value {UUID:$(player_uuid)}