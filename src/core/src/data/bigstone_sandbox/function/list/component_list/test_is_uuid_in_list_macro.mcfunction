$execute unless data storage bigstone_sandbox:data components[{"source":{UUID:$(UUID)}}] run return fail
$data modify storage bigstone_sandbox:data temp.test set from storage bigstone_sandbox:data components[{"source":{UUID:$(UUID)}}]
return 1