dialog show @s \
{ \
  "type": "minecraft:server_links", \
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
    }, \
    { \
      "translate": "newline_2" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.import_from_hand" \
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
      "translate": "bigstone_sandbox.dialog_menu.import_private", \
      "color": "yellow", \
      "click_event": { \
        "action": "run_command", \
        "command": "trigger bigstone_sandbox_menu set -15" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.import_private_from_hand", \
          "color": "yellow", \
          "font": "bigstone_sandbox:small_caps" \
        } \
      } \
    }, \
    { \
      "translate": "newline_2" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.import_public", \
      "color": "green", \
      "click_event": { \
        "action": "run_command", \
        "command": "trigger bigstone_sandbox_menu set -16" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.import_public_from_hand", \
          "color": "green", \
          "font": "bigstone_sandbox:small_caps" \
        } \
      } \
    }, \
    { \
      "translate": "newline_1" \
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
      "translate": "bigstone_sandbox.dialog_menu.button.admin_check", \
      "font": "bigstone_sandbox:menu", \
      "click_event": { \
        "action": "run_command", \
        "command": "/function bigstone_sandbox:menu/dialog_action/admin_check {\"command\": \"function bigstone_sandbox:menu/dialog/admin_import\"}" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.import_from_item_data", \
          "color": "red", \
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
        "command": "/function bigstone_sandbox:menu/dialog_action/admin_check {\"command\": \"function bigstone_sandbox:menu/dialog/admin_import\"}" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.import_from_item_data", \
          "color": "red", \
          "font": "bigstone_sandbox:small_caps" \
        } \
      } \
    }, \
    { \
      "translate": "newline_1" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.background.bottom", \
      "font": "bigstone_sandbox:menu", \
      "shadow_color": 0 \
    } \
  ], \
  "width": 256 \
}, \
  "can_close_with_escape": true, \
  "pause": false, \
  "after_action": "none" \
}