scoreboard players set #command_success bigstone_sandbox.temp 0
#place block with feature place and test if the placement was successful
$execute \
    store success score #command_success bigstone_sandbox.temp \
        run place template bigstone_sandbox:component-$(ID_1)-$(ID_0) $(x) $(y) $(z)
#play sound if playment succeeded
$execute if score #command_success bigstone_sandbox.temp matches 1 \
    run execute positioned $(x) $(y) $(z) \
        run playsound minecraft:block.stone.place block @a ~8 ~8 ~8 10.0

#add translation here
execute if score #command_success bigstone_sandbox.temp matches 0 \
    run return \
        run tellraw @s {\
            "bold":true,\
            "color":"dark_red",\
            "hover_event":{\
                "action":"show_text",\
                "value":[\
                    {\
                    "text":"This warning can appears if the referenced structure for this item isn't stored in this world. Please import your structure through the proper method through the bigstone dialog menu"\
                    }\
                ]\
            },\
        "text":"[Structure Placement is Invalid]"\
    }