execute unless data storage bigstone_sandbox:data temp.list[] run return fail

data modify storage bigstone_sandbox:data temp.list[{"data":{"public":false}}].temp.remove set value true
$data remove storage bigstone_sandbox:data temp.list[{"data":{"managers":[{"UUID":$(UUID)}]}}].temp.remove
data remove storage bigstone_sandbox:data temp.list[{"temp":{"remove":true}}]
data remove storage bigstone_sandbox:data temp.list[].temp