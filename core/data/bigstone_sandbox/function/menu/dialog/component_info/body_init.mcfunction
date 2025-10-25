data modify storage bigstone_sandbox:data temp.body set value \
[ \
  { \
    "type": "minecraft:plain_message", \
    "contents": [ \
      "", \
      { \
        "translate": "bigstone_sandbox.dialog_menu.background.top", \
        "font": "bigstone_sandbox:menu", \
        "shadow_color": 0 \
      }, \
      { \
        "translate": "newline_2" \
      }, \
      { \
        "translate": "bigstone_sandbox.dialog_menu.button.back", \
        "font": "bigstone_sandbox:menu", \
        "click_event": { \
          "action": "run_command", \
          "command": "trigger bigstone_sandbox_menu set -8" \
        }, \
        "hover_event": { \
          "action": "show_text", \
          "value": { \
            "translate": "bigstone_sandbox.dialog_menu.back", \
            "color": "yellow", \
            "font": "bigstone_sandbox:small_caps" \
          } \
        } \
      }, \
      { \
        "translate": "space.195", \
        "font": "space:default" \
      }, \
      { \
        "translate": "bigstone_sandbox.dialog_menu.button.close_menu", \
        "font": "bigstone_sandbox:menu", \
        "click_event": { \
          "action": "run_command", \
          "command": "trigger bigstone_sandbox_menu set -1" \
        }, \
        "hover_event": { \
          "action": "show_text", \
          "value": { \
            "translate": "bigstone_sandbox.dialog_menu.close_menu", \
            "color": "dark_red", \
            "font": "bigstone_sandbox:small_caps" \
          } \
        } \
      }, \
      { \
        "translate": "newline_1" \
      }, \
      { \
        "translate": "bigstone_sandbox.dialog_menu.button.blank", \
        "shadow_color": 0, \
        "font": "bigstone_sandbox:menu", \
        "click_event": { \
          "action": "run_command", \
          "command": "trigger bigstone_sandbox_menu set -8" \
        }, \
        "hover_event": { \
          "action": "show_text", \
          "value": { \
            "translate": "bigstone_sandbox.dialog_menu.back", \
            "color": "yellow", \
            "font": "bigstone_sandbox:small_caps" \
          } \
        } \
      }, \
      { \
        "translate": "space.195", \
        "font": "space:default" \
      }, \
      { \
        "translate": "bigstone_sandbox.dialog_menu.button.blank", \
        "shadow_color": 0, \
        "font": "bigstone_sandbox:menu", \
        "click_event": { \
          "action": "run_command", \
          "command": "trigger bigstone_sandbox_menu set -1" \
        }, \
        "hover_event": { \
          "action": "show_text", \
          "value": { \
            "translate": "bigstone_sandbox.dialog_menu.close_menu", \
            "color": "dark_red", \
            "font": "bigstone_sandbox:small_caps" \
          } \
        } \
      }, \
      { \
        "translate": "newline_1" \
      }, \
      { \
        "text": "ERROR", \
        "underlined": true \
      }, \
      { \
        "translate": "newline_1" \
      }, \
      { \
        "text": "ERROR", \
        "font": "bigstone_sandbox:small_caps", \
        "color": "gray", \
        "italic": true \
      } \
    ], \
    "width": 256 \
  }, \
  { \
    "type": "minecraft:item", \
    "item": { \
      "id": "minecraft:barrier" \
    }, \
    "description": { \
      "text": "ERROR" \
    }, \
    "show_tooltip": true, \
    "width": 20, \
    "height": 16 \
  }, \
  { \
    "type": "minecraft:plain_message", \
    "contents": [ \
      "", \
      { \
        "translate": "bigstone_sandbox.dialog_menu.background.middle", \
        "font": "bigstone_sandbox:menu", \
        "shadow_color": 0 \
      }, \
      { \
        "translate": "newline_1" \
      }, \
      { \
        "translate": "bigstone_sandbox.dialog_menu.port_north", \
        "with": [ \
          { \
            "text": "", \
            "extra": [""], \
            "color": "dark_gray", \
            "font": "minecraft:default" \
          }, \
        ], \
        "extra": [ \
          { \
          "translate": "newline_1" \
          } \
        ], \
        "font": "bigstone_sandbox:small_caps", \
        "color": "blue", \
      }, \
      { \
        "translate": "bigstone_sandbox.dialog_menu.port_south", \
        "with": [ \
          { \
            "text": "", \
            "extra": [""], \
            "color": "dark_gray", \
            "font": "minecraft:default" \
          } \
        ], \
        "extra": [ \
          { \
          "translate": "newline_1" \
          } \
        ], \
        "font": "bigstone_sandbox:small_caps", \
        "color": "red" \
      }, \
      { \
        "translate": "bigstone_sandbox.dialog_menu.port_east", \
        "with": [ \
          { \
            "text": "", \
            "extra": [""], \
            "color": "dark_gray", \
            "font": "minecraft:default" \
          } \
        ], \
        "extra": [ \
          { \
          "translate": "newline_1" \
          } \
        ], \
        "font": "bigstone_sandbox:small_caps", \
        "color": "green" \
      }, \
      { \
        "translate": "bigstone_sandbox.dialog_menu.port_west", \
        "with": [ \
          { \
            "text": "", \
            "extra": [""], \
            "color": "dark_gray", \
            "font": "minecraft:default" \
          } \
        ], \
        "extra": [ \
          { \
          "translate": "newline_1" \
          } \
        ], \
        "font": "bigstone_sandbox:small_caps", \
        "color": "yellow" \
      }, \
      { \
        "translate": "bigstone_sandbox.dialog_menu.port_top", \
        "with": [ \
          { \
            "text": "", \
            "extra": [""], \
            "color": "dark_gray", \
            "font": "minecraft:default" \
          } \
        ], \
        "extra": [ \
          { \
          "translate": "newline_1" \
          } \
        ], \
        "font": "bigstone_sandbox:small_caps", \
        "color": "gold" \
      }, \
      { \
        "translate": "bigstone_sandbox.dialog_menu.port_bottom", \
        "with": [ \
          { \
            "text": "", \
            "extra": [""], \
            "color": "dark_gray", \
            "font": "minecraft:default" \
          } \
        ], \
        "extra": [ \
          { \
          "translate": "newline_1" \
          } \
        ], \
        "font": "bigstone_sandbox:small_caps", \
        "color": "light_purple" \
      }, \
      { \
        "translate": "bigstone_sandbox.dialog_menu.background.middle", \
        "font": "bigstone_sandbox:menu", \
        "shadow_color": 0 \
      }, \
      { \
        "translate": "newline_2" \
      }, \
      { \
        "translate": "bigstone_sandbox.dialog_menu.tags_list", \
        "with": [ \
          { \
            "text": "", \
            "extra": [ \
                { \
                  "translate": "newline_1" \
                }, \
             ], \
            "color": "dark_gray", \
            "font": "bigstone_sandbox:small_caps" \
          } \
        ], \
        "font": "bigstone_sandbox:small_caps" \
      }, \
      { \
        "translate": "newline_2" \
      }, \
      { \
        "translate": "bigstone_sandbox.dialog_menu.button.admin_check", \
        "font": "bigstone_sandbox:menu", \
        "click_event": { \
          "action": "run_command", \
          "command": "/function bigstone_sandbox:menu/dialog_action/admin_check {\"command\": \"function bigstone_sandbox:menu/dialog/component_info\"}" \
        }, \
        "hover_event": { \
          "action": "show_text", \
          "value": { \
            "translate": "bigstone_sandbox.dialog_menu.admin_delete", \
            "color": "red", \
            "font": "bigstone_sandbox:small_caps" \
          } \
        } \
      }, \
      { \
        "translate": "bigstone_sandbox.dialog_menu.button.delete", \
        "font": "bigstone_sandbox:menu", \
        "click_event": { \
          "action": "run_command", \
          "command": "trigger bigstone_sandbox_menu set -2" \
        }, \
        "hover_event": { \
          "action": "show_text", \
          "value": { \
            "translate": "bigstone_sandbox.dialog_menu.delete", \
            "color": "red", \
            "font": "bigstone_sandbox:small_caps" \
          } \
        } \
      }, \
      { \
        "translate": "space.48", \
        "font": "space:default" \
      }, \
      { \
        "translate": "bigstone_sandbox.dialog_menu.button.give_long", \
        "font": "bigstone_sandbox:menu", \
        "click_event": { \
          "action": "run_command", \
          "command": "trigger bigstone_sandbox_menu set -6" \
        }, \
        "hover_event": { \
          "action": "show_text", \
          "value": { \
            "translate": "bigstone_sandbox.dialog_menu.give", \
            "color": "dark_green", \
            "font": "bigstone_sandbox:small_caps" \
          } \
        } \
      }, \
      { \
        "translate": "space.48", \
        "font": "space:default" \
      }, \
      { \
        "translate": "bigstone_sandbox.dialog_menu.button.export", \
        "font": "bigstone_sandbox:menu", \
        "click_event": { \
          "action": "run_command", \
          "command": "trigger bigstone_sandbox_menu set -4" \
        }, \
        "hover_event": { \
          "action": "show_text", \
          "value": { \
            "translate": "bigstone_sandbox.dialog_menu.export", \
            "color": "gold", \
            "font": "bigstone_sandbox:small_caps" \
          } \
        } \
      }, \
      { \
        "translate": "bigstone_sandbox.dialog_menu.button.share", \
        "font": "bigstone_sandbox:menu", \
        "click_event": { \
          "action": "run_command", \
          "command": "trigger bigstone_sandbox_menu set -25" \
        }, \
        "hover_event": { \
          "action": "show_text", \
          "value": { \
            "translate": "bigstone_sandbox.dialog_menu.share", \
            "color": "yellow", \
            "font": "bigstone_sandbox:small_caps" \
          } \
        } \
      }, \
      { \
        "translate": "newline_1" \
      }, \
      { \
        "translate": "bigstone_sandbox.dialog_menu.button.blank", \
        "shadow_color": 0, \
        "font": "bigstone_sandbox:menu", \
        "click_event": { \
          "action": "run_command", \
          "command": "/function bigstone_sandbox:menu/dialog_action/admin_check {\"command\": \"function bigstone_sandbox:menu/dialog/component_info\"}" \
        }, \
        "hover_event": { \
          "action": "show_text", \
          "value": { \
            "translate": "bigstone_sandbox.dialog_menu.admin_delete", \
            "color": "red", \
            "font": "bigstone_sandbox:small_caps" \
          } \
        } \
      }, \
      { \
        "translate": "bigstone_sandbox.dialog_menu.button.blank", \
        "shadow_color": 0, \
        "font": "bigstone_sandbox:menu", \
        "click_event": { \
          "action": "run_command", \
          "command": "trigger bigstone_sandbox_menu set -2" \
        }, \
        "hover_event": { \
          "action": "show_text", \
          "value": { \
            "translate": "bigstone_sandbox.dialog_menu.delete", \
            "color": "red", \
            "font": "bigstone_sandbox:small_caps" \
          } \
        } \
      }, \
      { \
        "translate": "space.48", \
        "font": "space:default" \
      }, \
      { \
        "translate": "bigstone_sandbox.dialog_menu.button.blank_long", \
        "shadow_color": 0, \
        "font": "bigstone_sandbox:menu", \
        "click_event": { \
          "action": "run_command", \
          "command": "trigger bigstone_sandbox_menu set -6" \
        }, \
        "hover_event": { \
          "action": "show_text", \
          "value": { \
            "translate": "bigstone_sandbox.dialog_menu.give", \
            "color": "dark_green", \
            "font": "bigstone_sandbox:small_caps" \
          } \
        } \
      }, \
      { \
        "translate": "space.48", \
        "font": "space:default" \
      }, \
      { \
        "translate": "bigstone_sandbox.dialog_menu.button.blank", \
        "shadow_color": 0, \
        "font": "bigstone_sandbox:menu", \
        "click_event": { \
          "action": "run_command", \
          "command": "trigger bigstone_sandbox_menu set -4" \
        }, \
        "hover_event": { \
          "action": "show_text", \
          "value": { \
            "translate": "bigstone_sandbox.dialog_menu.export", \
            "color": "gold", \
            "font": "bigstone_sandbox:small_caps" \
          } \
        } \
      }, \
      { \
        "translate": "bigstone_sandbox.dialog_menu.button.blank", \
        "shadow_color": 0, \
        "font": "bigstone_sandbox:menu", \
        "click_event": { \
          "action": "run_command", \
          "command": "trigger bigstone_sandbox_menu set -25" \
        }, \
        "hover_event": { \
          "action": "show_text", \
          "value": { \
            "translate": "bigstone_sandbox.dialog_menu.share", \
            "color": "yellow", \
            "font": "bigstone_sandbox:small_caps" \
          } \
        } \
      }, \
      { \
        "translate": "bigstone_sandbox.dialog_menu.background.bottom", \
        "font": "bigstone_sandbox:menu", \
        "shadow_color": 0 \
      } \
    ], \
    "width": 256 \
  } \
]