scoreboard players set #command_success bigstone_sandbox.temp 0
#place block with feature place and test if the placement was successful
$execute \
    store success score #command_success bigstone_sandbox.temp \
        run place template bigstone_sandbox:component-$(ID_0)-$(ID_1)-$(ID_2)-$(ID_3) $(x) $(y) $(z)
#play sound if playment succeeded
$execute if score #command_success bigstone_sandbox.temp matches 1 \
    run execute positioned $(x) $(y) $(z) \
        run playsound minecraft:block.stone.place block @a ~8 ~8 ~8 10.0 1 1

#add translation here
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