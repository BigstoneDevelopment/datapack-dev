execute unless data storage xolibs:playerdata storage.bigstone_sandbox.list.filtered[] run return fail
data modify storage xolibs:playerdata storage.bigstone_sandbox.list.filtered[{}].data.saved set value false
$execute if data storage xolibs:playerdata storage.bigstone_sandbox.list.filtered[{"data":{"managers":[{"UUID":$(UUID)}]}}] run \
  data modify storage xolibs:playerdata storage.bigstone_sandbox.list.filtered[{"data":{"managers":[{"UUID":$(UUID)}]}}].data.saved set value true