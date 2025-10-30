tag @s add bigstone_sandbox.this

# run at all interaction entities with break detector tag in area of player
scoreboard players set #command_success bigstone_sandbox.temp 0
execute store success score #command_success bigstone_sandbox.temp \
        as @e[ \
                type=minecraft:interaction, \
                tag=bigstone_sandbox.component_break_detector, \
                distance=..22 \
             ] \
             at @s run function bigstone_sandbox:placements/item/break/find_attacked

# show error
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

tag @s remove bigstone_sandbox.this