dialog show @s \
{ \
  "type": "minecraft:multi_action", \
  "title": { \
    "translate": "bigstone_sandbox.dialog_menu.import_component", \
    "color": "gold", \
    "font": "bigstone_sandbox:small_caps" \
  }, \
  "body": { \
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
          "command": "trigger bigstone_sandbox_menu set -7" \
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
          "command": "trigger bigstone_sandbox_menu set -7" \
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
        "translate": "space.196", \
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
      } \
    ], \
    "width": 256 \
  }, \
  "inputs": [ \
    { \
      "type": "minecraft:text", \
      "key": "item_data", \
      "label": { \
        "translate": "bigstone_sandbox.dialog_menu.import_prompt", \
        "color": "gray" \
      }, \
      "max_length": 2147483647, \
      "multiline": { \
        "height": 100 \
      } \
    } \
  ], \
  "can_close_with_escape": true, \
  "pause": false, \
  "after_action": "none", \
  "columns": 2, \
  "actions": [ \
    { \
      "label": { \
        "translate": "bigstone_sandbox.dialog_menu.import_private", \
        "color": "yellow" \
      }, \
      "width": 125, \
      "action": { \
        "type": "dynamic/run_command", \
        "template": "function bigstone_sandbox:menu/dialog_action/import/private/import {item_data:'$(item_data)'}" \
      } \
    }, \
    { \
      "label": { \
        "translate": "bigstone_sandbox.dialog_menu.import_public", \
        "color": "green" \
      }, \
      "width": 125, \
      "action": { \
        "type": "dynamic/run_command", \
        "template": "function bigstone_sandbox:menu/dialog_action/import/public/import {item_data:'$(item_data)'}" \
      } \
    } \
  ] \
}