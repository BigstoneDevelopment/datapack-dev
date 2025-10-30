# get position from custom data
scoreboard players set #command_success bigstone_sandbox.temp 0
execute store success score #command_success bigstone_sandbox.temp \
    run data get entity @s data.x
    
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

scoreboard players set #command_success bigstone_sandbox.temp 0
execute store success score #command_success bigstone_sandbox.temp \
    run data get entity @s data.y
    
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

scoreboard players set #command_success bigstone_sandbox.temp 0
execute store success score #command_success bigstone_sandbox.temp \
    run data get entity @s data.z
    
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

function bigstone_sandbox:placements/item/use/delete with entity @s data

# kill interaction entity
tag @s add bigstone_sandbox.attacked
schedule function bigstone_sandbox:placements/item/break/kill_interaction 1t