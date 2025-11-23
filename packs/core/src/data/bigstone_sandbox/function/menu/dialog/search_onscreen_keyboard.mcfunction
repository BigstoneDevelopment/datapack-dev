#under testing
#execute unless data storage bigstone_sandbox:data settings{"search":1b} run tellraw @s ["",{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.search_disabled","fallback":"Search by name has been disabled by an OP.","color":"yellow"}]
#execute unless data storage bigstone_sandbox:data settings{"search":1b} run return fail

dialog show @s \
{ \
  "type": "minecraft:multi_action", \
  "title": { \
    "translate": "bigstone_sandbox.dialog_menu.search_menu", \
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
    } \
    ], \
    "width": 256 \
  }, \
  "inputs": [ \
    { \
      "type": "minecraft:text", \
      "key": "search_query", \
      "label": { \
        "translate": "bigstone_sandbox.dialog_menu.search_prompt", \
        "color": "gray" \
      }, \
      "max_length": 30, \
    } \
  ], \
  "can_close_with_escape": true, \
  "pause": false, \
  "after_action": "none", \
  "columns": 2, \
  "actions": [ \
    { \
      "label": { \
        "translate": "bigstone_sandbox.dialog_menu.search", \
        "color": "light_purple" \
      }, \
      "width": 125, \
      "action": { \
        "type": "dynamic/run_command", \
        "template": "function bigstone_sandbox:menu/dialog_action/search/query {search_query:'$(search_query)'}" \
      } \
    }, \
    { \
      "label": { \
        "translate": "bigstone_sandbox.dialog_menu.back", \
        "color": "yellow" \
      }, \
      "width": 125, \
      "action": { \
        "type": "run_command", \
        "command": "trigger bigstone_sandbox_menu set -8" \
      } \
    } \
  ] \
}