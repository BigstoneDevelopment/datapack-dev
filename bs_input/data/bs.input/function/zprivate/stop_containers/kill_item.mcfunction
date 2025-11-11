# kill item
kill @e[ \
            type=item, \
            nbt={ \
                Item:{ \
                    components:{ \
                        "minecraft:custom_data":{ \
                            bigstone_sandbox_input:1b \
                        } \
                    } \
                } \
            } \
        ]

# give book
function xolibs:api/playerdata/load
data modify storage bigstone_sandbox:playerdata storage.bigstone_sandbox_input.inv set from entity @s Inventory

item replace entity @s weapon.mainhand with writable_book[ \
                                                            custom_name="", \
                                                            custom_data={ \
                                                                bigstone_sandbox_input: 1b \
                                                            } \
                                                        ]