# clear storage
data remove storage bigstone_sandbox:data newUUID

# summon entity
summon marker ~ ~ ~ {Tags:["bigstone_sandbox.uuid_generator"]}

# store uuid
data modify storage bigstone_sandbox:data newUUID set from entity @n[type=marker,tag=bigstone_sandbox.uuid_generator] UUID

# kill entity
kill @n[type=marker,tag=bigstone_sandbox.uuid_generator]