execute unless data storage bigstone_sandbox:playerdata storage.bigstone_sandbox.list.filtered[] run return fail
data modify storage bigstone_sandbox:playerdata storage.bigstone_sandbox.list.filtered[{}].data.saved set value false
$execute if data storage bigstone_sandbox:playerdata storage.bigstone_sandbox.list.filtered[{"data":{"managers":[{"UUID":$(UUID)}]}}] run \
  data modify storage bigstone_sandbox:playerdata storage.bigstone_sandbox.list.filtered[{"data":{"managers":[{"UUID":$(UUID)}]}}].data.saved set value true