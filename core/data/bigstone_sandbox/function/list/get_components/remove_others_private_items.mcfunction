execute unless data storage xolibs:playerdata temp.list[] run return fail

data modify storage xolibs:playerdata temp.list[{"data":{"public":false}}].temp.remove set value true
$data remove storage xolibs:playerdata temp.list[{"data":{"owner":$(UUID)}}].temp.remove
data remove storage xolibs:playerdata temp.list[{"temp":{"remove":true}}]
data remove storage xolibs:playerdata temp.list[].temp