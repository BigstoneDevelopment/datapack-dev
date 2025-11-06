# save structure
scoreboard players set #command_success bigstone_sandbox.temp 0
data remove storage bigstone_sandbox:structures save

$execute \
    store success score #command_success bigstone_sandbox.temp \
        run function bs.structures:save {"x": $(x), "y": $(y), "z": $(z)}

# play sound if playment succeeded
$execute if score #command_success bigstone_sandbox.temp matches 1 \
    run execute positioned $(x) $(y) $(z) \
        run playsound minecraft:block.conduit.activate block @a ~8 ~8 ~8 10.0 1 1
$execute if score #command_success bigstone_sandbox.temp matches 1 \
    run execute positioned $(x) $(y) $(z) \
        run playsound minecraft:block.amethyst_block.resonate block @a ~8 ~8 ~8 10.0 1 1

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
                "translate": "bigstone_sandbox.tellraw_message.error_structure_saving", \
                "fallback": "Structure Saving encountered an error.", \
                "color":"red", \
            } \
        ]