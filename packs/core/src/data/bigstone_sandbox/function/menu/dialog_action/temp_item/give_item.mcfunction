$loot give @s loot {type:"minecraft:command",pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:music_disc_creator",functions:[{function:"minecraft:set_components",components:{ \
    "minecraft:item_name": [ \
        { \
            "color": "gold", \
            "translate": "bigstone_sandbox.item.temporary_component", \
            "fallback": "", \
            "font": "bigstone_sandbox:small_caps" \
        }, \
        { \
            "color": "gold", \
            "translate": "bigstone_sandbox.dialog_menu.empty", \
            "fallback": "Temporary Component", \
            "font": "minecraft:default" \
        } \
    ], \
    "minecraft:item_model": "bigstone_sandbox:component_item", \
    "minecraft:lore": [ \
        { \
            "color": "gray", \
            "translate": "bigstone_sandbox.item.temporary_component_description", \
            "fallback": "This is a temporary component.", \
            "italic": 0b \
        }, \
        "", \
        [ \
            { \
                "color": "yellow", \
                "translate": "bigstone_sandbox.item.data_stored_on_item", \
                "fallback": "", \
                "font": "bigstone_sandbox:small_caps" \
            }, \
            { \
                "color": "yellow", \
                "translate": "bigstone_sandbox.dialog_menu.empty", \
                "fallback": "The data is only stored on the item", \
                "font": "minecraft:default" \
            } \
        ] \
    ], \
    "minecraft:custom_data": { \
        "bigstone_sandbox": { \
            "source": { \
                "structure_data": $(save) \
            } \
        }, \
        "item_use_effect": { \
        "type":"bigstone_sandbox", \
        "effects": [ \
            "place_component", \
        ], \
        } \
    }, \
    "minecraft:consumable": { \
        "consume_seconds": 0.0, \
        "sound": "intentionally_empty", \
        "has_consume_particles": false \
    }, \
    "minecraft:use_cooldown": { \
        "seconds": 0.1, \
        "cooldown_group": "bigstone_component" \
    }, \
    "!minecraft:jukebox_playable": {}, \
    "minecraft:tooltip_style": "bigstone_sandbox:bigstone_sandbox", \
    "max_stack_size": 64 \
}}]}]}]}