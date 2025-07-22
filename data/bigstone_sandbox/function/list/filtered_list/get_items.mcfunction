$data modify storage xolibs:playerdata storage.bigstone_sandbox.list.filtered append from storage xolibs:playerdata storage.bigstone_sandbox.list.items[$(include)]
execute if data storage xolibs:playerdata storage.bigstone_sandbox.list.filtered[] run data modify storage xolibs:playerdata storage.bigstone_sandbox.list.filtered[] merge value {"private":true}
$data modify storage xolibs:playerdata storage.bigstone_sandbox.list.filtered append from storage bigstone_sandbox:components list.items[$(include)]
execute if data storage xolibs:playerdata storage.bigstone_sandbox.list.filtered[] run data modify storage xolibs:playerdata storage.bigstone_sandbox.list.filtered[] merge value {"public":true}
execute if data storage xolibs:playerdata storage.bigstone_sandbox.list.filtered[] run data remove storage xolibs:playerdata storage.bigstone_sandbox.list.filtered[{"private":true}].public
#$data remove storage xolibs:playerdata storage.bigstone_sandbox.list.filtered[$(exclude)]