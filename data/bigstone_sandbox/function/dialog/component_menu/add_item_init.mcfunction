data modify storage bigstone_sandbox:components temp.add_item set value \
{ \
  "type": "minecraft:item", \
  "description": { \
    "contents": [ \
      "", \
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
        "translate": "space.5", \
        "font": "space:default" \
      } \
    ], \
    "width": 128 \
  }, \
  "width": 16, \
  "height": 16 \
}