# import data off item
scoreboard players set #command_success bigstone_sandbox.temp 0

execute store success score #command_success bigstone_sandbox.temp \
    run data get entity @s SelectedItem.components.minecraft:custom_data.bigstone_sandbox.source.structure_data
    
# log error message if structure data not found
execute if score #command_success bigstone_sandbox.temp matches 0 \
    run return \
        run tellraw @s [ \
            "", \
            { \
                "text": "[", \
                "color": "dark_gray" \
            }, \
            { \
                "translate": "bigstone_sandbox.tellraw_message.title", \
                "fallback": "Bigstone Sandbox", \
                "color": "gold" \
            }, \
            { \
                "text": "] ", \
                "color": "dark_gray" \
            }, \
            { \
                "translate": "bigstone_sandbox.tellraw_message.unknown_structure_placement", \
                "fallback": "Structure Placement not found.", \
                "color":"red", \
            } \
        ]

data modify storage bigstone_sandbox:structures placementData set from entity @s SelectedItem.components.minecraft:custom_data.bigstone_sandbox.source.structure_data

# place structure
scoreboard players set #command_success bigstone_sandbox.temp 0

$execute \
    store success score #command_success bigstone_sandbox.temp \
        run function item_structures:load {"x": $(x), "y": $(y), "z": $(z)}

# play sound if playment succeeded
$execute if score #command_success bigstone_sandbox.temp matches 1 \
    run execute positioned $(x) $(y) $(z) \
        run playsound minecraft:block.copper_bulb.step block @a ~8 ~8 ~8 10.0
$execute if score #command_success bigstone_sandbox.temp matches 1 \
    run execute positioned $(x) $(y) $(z) \
        run playsound minecraft:block.bone_block.place block @a ~8 ~8 ~8 10.0

# log error message if placement failed
execute if score #command_success bigstone_sandbox.temp matches 0 \
    run return \
        run tellraw @s [ \
            "", \
            { \
                "text": "[", \
                "color": "dark_gray" \
            }, \
            { \
                "translate": "bigstone_sandbox.tellraw_message.title", \
                "fallback": "Bigstone Sandbox", \
                "color": "gold" \
            }, \
            { \
                "text": "] ", \
                "color": "dark_gray" \
            }, \
            { \
                "translate": "bigstone_sandbox.tellraw_message.invalid_structure_placement", \
                "fallback": "Structure Placement is Invalid.", \
                "color":"red", \
            } \
        ]