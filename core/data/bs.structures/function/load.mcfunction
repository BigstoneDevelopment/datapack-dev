# store target uuid in storage
data modify storage bigstone_sandbox:structures temp_target set from entity @s UUID

# push to queue
$data modify storage bigstone_sandbox:structures queue append value { \
    x: $(x), \
    y: $(y), \
    z: $(z), \
    data: {}, \
    target: [] \
}

# insert data
data modify storage bigstone_sandbox:structures queue[-1].data set from storage bigstone_sandbox:structures placementData
data modify storage bigstone_sandbox:structures queue[-1].target set from storage bigstone_sandbox:structures temp_target

# cleanup temp storage
data remove storage bigstone_sandbox:structures placementData
data remove storage bigstone_sandbox:structures temp_target

# start processing
function bs.structures:zprivate/queue/load/process

return 1