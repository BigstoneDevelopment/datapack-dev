$data modify storage bigstone_sandbox:data temp.body prepend value \
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
        "command": "trigger bigstone_sandbox_menu set $(component_info_index)" \
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
      "translate": "space.193", \
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
      "translate": "newline_2" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.export", \
      "font": "bigstone_sandbox:small_caps" \
    }, \
    { \
      "translate": "newline_1" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.background.import", \
      "font": "bigstone_sandbox:menu", \
      "shadow_color": 0 \
    }, \
    { \
      "translate": "newline_1" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.copy_prompt", \
      "color": "green", \
      "click_event": { \
        "action": "copy_to_clipboard", \
        "value": "ERROR" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.copy_prompt", \
          "color": "green", \
          "font": "bigstone_sandbox:small_caps" \
        } \
      } \
    }, \
    { \
      "translate": "newline_2" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.back", \
      "color": "yellow", \
      "click_event": { \
        "action": "run_command", \
        "command": "trigger bigstone_sandbox_menu set $(component_info_index)" \
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
      "translate": "newline_4" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.background.bottom", \
      "font": "bigstone_sandbox:menu", \
      "shadow_color": 0 \
    } \
  ], \
  "width": 256 \
}