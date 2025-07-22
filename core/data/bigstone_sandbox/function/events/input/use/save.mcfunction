$execute positioned $(x) $(y) $(z) run playsound minecraft:block.stone.break block @a ~8 ~8 ~8 10.0

function #bigstone_sandbox:uuid_to_hex with entity @s SelectedItem.components."minecraft:custom_data".bigstone_sandbox.struc
$execute positioned $(x) $(y) $(z) run function bigstone_sandbox:structures/save_structure with storage bs:out uuid.int_to_hex