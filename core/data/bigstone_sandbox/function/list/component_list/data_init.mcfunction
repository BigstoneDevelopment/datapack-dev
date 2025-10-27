data modify storage bigstone_sandbox:data temp.component set value \
{ \
  "item": { \
    "components": { \
      "minecraft:item_name": { \
        "color": "gold", \
        "text": "", \
        "font": "bigstone_sandbox:small_caps" \
      }, \
      "minecraft:item_model": "", \
      "minecraft:lore": [ \
        { \
          "color": "gray", \
          "text": "", \
          "italic": 0 \
        }, \
        { \
          "with": [ \
            "" \
          ], \
          "color": "dark_gray", \
          "italic": 0, \
          "translate": "bigstone_sandbox.component.made_by" \
        }, \
        { \
          "text": "" \
        }, \
        { \
          "with": [ \
            { \
              "color": "dark_gray", \
              "extra": [ \
                "" \
              ], \
              "text": "" \
            } \
          ], \
          "color": "blue", \
          "italic": 0, \
          "translate": "bigstone_sandbox.dialog_menu.port_north" \
        }, \
        { \
          "with": [ \
            { \
              "color": "dark_gray", \
              "extra": [ \
                "" \
              ], \
              "text": "" \
            } \
          ], \
          "color": "red", \
          "italic": 0, \
          "translate": "bigstone_sandbox.dialog_menu.port_south" \
        }, \
        { \
          "with": [ \
            { \
              "color": "dark_gray", \
              "extra": [ \
                "" \
              ], \
              "text": "" \
            } \
          ], \
          "color": "green", \
          "italic": 0, \
          "translate": "bigstone_sandbox.dialog_menu.port_east" \
        }, \
        { \
          "with": [ \
            { \
              "color": "dark_gray", \
              "extra": [ \
                "" \
              ], \
              "text": "" \
            } \
          ], \
          "color": "yellow", \
          "italic": 0, \
          "translate": "bigstone_sandbox.dialog_menu.port_west" \
        }, \
        { \
          "translate": "bigstone_sandbox.dialog_menu.port_top", \
          "with": [ \
            { \
              "text": "", \
              "color": "dark_gray", \
              "extra": [ \
                "" \
              ] \
            } \
          ], \
          "color": "gold", \
          "italic": false \
        }, \
        { \
          "translate": "bigstone_sandbox.dialog_menu.port_bottom", \
          "with": [ \
            { \
              "text": "", \
              "color": "dark_gray", \
              "extra": [ \
                "" \
              ] \
            } \
          ], \
          "color": "light_purple", \
          "italic": false \
        } \
      ], \
      "minecraft:custom_data": { \
        "bigstone_sandbox": {}, \
        "item_use_effect": { \
          "type":"bigstone_sandbox", \
          "effects": [ \
            "store_component", \
            "collect_component", \
            "delete_component" \
          ], \
          "betrow_effects": [ \
            "creative_self_delete_component" \
          ] \
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
    }, \
    "count": 1, \
    "id": "minecraft:music_disc_creator" \
  } \
}