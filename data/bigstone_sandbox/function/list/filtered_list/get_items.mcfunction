$data modify storage xolibs:playerdata player.bigstone_sandbox.filtered_list append from storage xolibs:playerdata player.bigstone_sandbox.private_list[$(include)]
data modify storage xolibs:playerdata player.bigstone_sandbox.filtered_list[] merge value {"private":true}
$data modify storage xolibs:playerdata player.bigstone_sandbox.filtered_list append from storage bigstone_sandbox:components list[$(include)]
data modify storage xolibs:playerdata player.bigstone_sandbox.filtered_list[] merge value {"public":true}
data remove storage xolibs:playerdata player.bigstone_sandbox.filtered_list[{"private":true}].public
#$data remove storage xolibs:playerdata player.bigstone_sandbox.filtered_list[$(exclude)]