#if last lad left, kick him out and shove the loot in thee hand
$execute if entity @s[predicate=bigstone_sandbox:item_detect/mainhand/is_selectitem,predicate=bigstone_sandbox:item_detect/mainhand/is_one,gamemode=!creative] \
    run return \
            run item replace entity @s weapon.mainhand with minecraft:music_disc_creator[\
            minecraft:custom_data={\
                    item_use_effect:{\
                        type:"bigstone",\
                        effect:"place_component"\
                    },\
                    bigstone_sandbox:{\
                        struc:{\
                            ID_0:$(ID_0),\
                            ID_1:$(ID_1)\
                        }\
                    }\
                },\
            minecraft:consumable={\
                consume_seconds:0,\
                sound:"intentionally_empty",\
                has_consume_particles:0b\
            },\
            minecraft:use_cooldown={\
                seconds:0.1,\
                cooldown_group:"bigblock"\
            },\
            minecraft:max_stack_size=64\
        ]

$loot give @s loot {\
    pools:[\
        {\
            rolls:1,\
            entries:[\
                {\
                    type:"minecraft:item",\
                    name:"minecraft:music_disc_creator",\
                    functions:[\
                        {\
                            function:"minecraft:set_components",\
                            components:{\
                                "minecraft:custom_data":{\
                                    item_use_effect:{\
                                        type:"bigstone",\
                                        effect:"place_component"\
                                    },\
                                    bigstone_sandbox:{"struc":{"ID_0":$(ID_0),"ID_1":$(ID_1)}}\
                                },\
                                "minecraft:consumable":{\
                                    consume_seconds:0,\
                                    sound:"intentionally_empty",\
                                    has_consume_particles:0b\
                                },\
                                "minecraft:use_cooldown":{\
                                    seconds:0.1,\
                                    cooldown_group:"bigblock"\
                                },\
                                "minecraft:max_stack_size":64\
                            }\
                        }\
                    ]\
                }\
            ]\
        }\
    ]\
}