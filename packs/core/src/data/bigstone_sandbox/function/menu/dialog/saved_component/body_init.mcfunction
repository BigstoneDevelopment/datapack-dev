data modify storage bigstone_sandbox:data temp.body prepend value \
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
      "translate": "space.201", \
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
      "translate": "space.201", \
      "font": "space:default" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.blank", \
      "font": "bigstone_sandbox:menu", \
      "shadow_color": 0, \
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
      "translate": "bigstone_sandbox.dialog_menu.background.export", \
      "font": "bigstone_sandbox:menu", \
      "shadow_color": 0 \
    }, \
    { \
      "translate": "newline_1" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.temporary_item", \
      "color": "yellow", \
      "click_event": { \
        "action": "run_command", \
        "value": "trigger bigstone_sandbox_menu set -30" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.temporary_item_hover", \
          "color": "yellow", \
          "font": "bigstone_sandbox:small_caps" \
        } \
      } \
    }, \
    { \
      "translate": "newline_1" \
    } \
  ], \
  "width": 256 \
}