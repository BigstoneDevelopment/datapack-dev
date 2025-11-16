data modify storage bigstone_sandbox:data temp.add_item set value \
{ \
  "type": "minecraft:item", \
  "description": { \
    "contents": [ \
      "", \
      { \
        "translate": "bigstone_sandbox.dialog_menu.icon.public", \
        "fallback": "", \
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
        "fallback": "", \
        "font": "space:default" \
      }, \
      { \
        "translate": "bigstone_sandbox.dialog_menu.button.info_short", \
        "fallback": "", \
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
        "fallback": "", \
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
        "fallback": "", \
        "font": "space:default" \
      }, \
      { \
        "translate": "bigstone_sandbox.dialog_menu.background.menu_background", \
        "fallback": "", \
        "font": "bigstone_sandbox:menu", \
        "shadow_color": 0 \
      }, \
      { \
        "translate": "space.-10", \
        "fallback": "", \
        "font": "space:default" \
      }, \
      { \
        "translate": "newline_1", \
        "fallback": "" \
      }, \
      { \
        "translate": "bigstone_sandbox.variable", \
        "fallback": "", \
        "with": [ \
          { \
            "text": "ERROR" \
          } \
        ] \
      } \
    ], \
    "width": 512 \
  }, \
  "width": 16, \
  "height": 16 \
}