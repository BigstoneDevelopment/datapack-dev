# clear inv
clear @s

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
function bs.xolibs:api/playerdata/load
data modify storage bigstone_sandbox:playerdata storage.bigstone_sandbox_input.inv set from entity @s Inventory

item replace entity @s weapon.mainhand with writable_book[ \
                                                            custom_name="", \
                                                            custom_data={ \
                                                                bigstone_sandbox_input: 1b \
                                                            } \
                                                        ]

# show prompt
tellraw @s [{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{nbt:"storage.bigstone_sandbox_input.prompt",storage:"bigstone_sandbox:playerdata",color:"gray",interpret:true}]