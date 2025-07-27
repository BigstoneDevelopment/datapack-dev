#create a counterfeit
clone ~ ~ ~ ~15 ~15 ~15 29999984 288 29999984 strict
$setblock 29999999 305 29999999 structure_block[mode=save]{\
    name:"bigstone_sandbox:component-$(ID_1)-$(ID_0)",\
    posX:-15,\
    posY:-17,\
    posZ:-15,\
    sizeX:16,\
    sizeY:16,\
    sizeZ:16,\
    rotation:"NONE",\
    mirror:"NONE",\
    mode:"SAVE",\
    ignoreEntities:0b,\
    integrity:1.0f,\
    showboundingbox:0b,\
    strict:1b\
} replace
#make a getaway
setblock 29999999 306 29999999 minecraft:redstone_block replace
#remove the evidence
fill 29999999 305 29999999 29999999 306 29999999 air strict
fill 29999999 288 29999999 29999984 303 29999984 air strict

#hand out the loot
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