
#generate a id for UUID
function bigstone_sandbox:utilities/generate_uuid
data modify storage bigstone_sandbox:data component.ID set from storage bigstone_sandbox:data newUUID
data modify storage bigstone_sandbox:data component.ID_0 set from storage bigstone_sandbox:data newUUID[0]
data modify storage bigstone_sandbox:data component.ID_1 set from storage bigstone_sandbox:data newUUID[1]
data modify storage bigstone_sandbox:data component.ID_2 set from storage bigstone_sandbox:data newUUID[2]
data modify storage bigstone_sandbox:data component.ID_3 set from storage bigstone_sandbox:data newUUID[3]

#run save structure function
$execute positioned $(x) $(y) $(z) run function bigstone_sandbox:placements/item/use/structures/save_structure with storage bigstone_sandbox:data component