# clear storage
data remove storage bigstone_sandbox:data newUUID

#summon new entity storage
execute summon marker run function bigstone_sandbox:utilities/generate_uuid/get_entity_uuid

#check if the uuid is in use
function bigstone_sandbox:utilities/generate_uuid/check_uuid with storage bigstone_sandbox:data newUUID