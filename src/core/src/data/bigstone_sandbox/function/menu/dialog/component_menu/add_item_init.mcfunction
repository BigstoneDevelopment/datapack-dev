data modify storage bigstone_sandbox:data temp.add_item set value \
{ \
  "type": "minecraft:item", \
  "description": { \
    "contents": [ \
      "", \
      { \
        "translate": "bigstone_sandbox.dialog_menu.icon.public", \
        "font": "bigstone_sandbox:menu", \
        "shadow_color": 0, \
        "hover_event": { \
          "action": "show_text", \
          "value": { \
            "translate": "bigstone_sandbox.dialog_menu.public", \
            "color": "dark_green", \
            "font": "bigstone_sandbox:small_caps" \
          } \
        } \
      }, \
      { \
        "translate": "space.2", \
        "font": "space:default" \
      }, \
      { \
        "translate": "bigstone_sandbox.dialog_menu.button.info_short", \
        "font": "bigstone_sandbox:menu", \
        "click_event": { \
          "action": "run_command", \
        }, \
        "hover_event": { \
          "action": "show_text", \
          "value": { \
            "translate": "bigstone_sandbox.dialog_menu.info", \
            "color": "blue", \
            "font": "bigstone_sandbox:small_caps" \
          } \
        } \
      }, \
      { \
        "translate": "bigstone_sandbox.dialog_menu.button.give_short", \
        "font": "bigstone_sandbox:menu", \
        "click_event": { \
          "action": "run_command", \
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
        "translate": "space.-72", \
        "font": "space:default" \
      }, \
      { \
      "translate": "bigstone_sandbox.dialog_menu.background.menu_background", \
      "font": "bigstone_sandbox:menu", \
      "shadow_color": 0 \
      }, \
      { \
        "translate": "space.-10", \
        "font": "space:default" \
      }, \
      { \
        "translate": "newline_1" \
      }, \
      { \
        "text": "ERROR" \
      } \
    ], \
    "width": 512 \
  }, \
  "width": 16, \
  "height": 16 \
}