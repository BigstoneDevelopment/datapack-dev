execute unless data storage xolibs:playerdata storage.bigstone_sandbox.list.filtered[] run return fail

data modify storage xolibs:playerdata storage.bigstone_sandbox.list.filtered[{"data":{"public":false}}].temp.remove set value true
$data remove storage xolibs:playerdata storage.bigstone_sandbox.list.filtered[{"data":{"owner":$(UUID)}}].temp.remove
data remove storage xolibs:playerdata storage.bigstone_sandbox.list.filtered[{"temp":{"remove":true}}]
data remove storage xolibs:playerdata storage.bigstone_sandbox.list.filtered[].temp

$say $(UUID)