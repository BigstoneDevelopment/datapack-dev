data modify storage bigstone_sandbox:data temp.body prepend value \
{ \
  "type": "minecraft:plain_message", \
  "contents": [ \
    "", \
    { \
      "translate": "bigstone_sandbox.dialog_menu.empty", \
      "fallback": "WARNING!\n", \
      "color": "red", \
      "bold": true \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.empty", \
      "fallback": "Bigstone Sandbox ", \
      "color": "gold" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.empty", \
      "fallback": "requires a " \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.empty", \
      "fallback": "resource pack", \
      "color": "blue", \
      "underlined": true, \
      "click_event": { \
        "action": "open_url", \
        "url": "https://github.com/BigstoneDevelopment/resource-pack" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "text": "Click to download" \
        } \
      } \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.empty", \
      "fallback": " please download and install it" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.background.top", \
      "fallback": "", \
      "font": "bigstone_sandbox:menu", \
      "shadow_color": 0 \
    }, \
    { \
      "translate": "newline_2", \
      "fallback": "" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.home", \
      "fallback": "", \
      "font": "bigstone_sandbox:menu", \
      "click_event": { \
        "action": "run_command", \
        "command": "trigger bigstone_sandbox_menu set -10" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.home", \
          "color": "white", \
          "font": "bigstone_sandbox:small_caps" \
        } \
      } \
    }, \
    { \
      "translate": "space.54", \
      "fallback": "", \
      "font": "space:default" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.saver", \
      "fallback": "", \
      "font": "bigstone_sandbox:menu", \
      "click_event": { \
        "action": "run_command", \
        "command": "trigger bigstone_sandbox_menu set -29" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.saver", \
          "color": "green", \
          "font": "bigstone_sandbox:small_caps" \
        } \
      } \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.breaker", \
      "fallback": "", \
      "font": "bigstone_sandbox:menu", \
      "click_event": { \
        "action": "run_command", \
        "command": "trigger bigstone_sandbox_menu set -28" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.breaker", \
          "color": "red", \
          "font": "bigstone_sandbox:small_caps" \
        } \
      } \
    }, \
    { \
      "translate": "space.4", \
      "fallback": "", \
      "font": "space:default" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.search", \
      "fallback": "", \
      "font": "bigstone_sandbox:menu", \
      "click_event": { \
        "action": "run_command", \
        "command": "trigger bigstone_sandbox_menu set -9" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.search", \
          "color": "light_purple", \
          "font": "bigstone_sandbox:small_caps" \
        } \
      } \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.filter", \
      "fallback": "", \
      "font": "bigstone_sandbox:menu", \
      "click_event": { \
        "action": "run_command", \
        "command": "trigger bigstone_sandbox_menu set -5" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.filter", \
          "color": "aqua", \
          "font": "bigstone_sandbox:small_caps" \
        } \
      } \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.import", \
      "fallback": "", \
      "font": "bigstone_sandbox:menu", \
      "click_event": { \
        "action": "run_command", \
        "command": "trigger bigstone_sandbox_menu set -7" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.import", \
          "color": "blue", \
          "font": "bigstone_sandbox:small_caps" \
        } \
      } \
    }, \
    { \
      "translate": "space.54", \
      "fallback": "", \
      "font": "space:default" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.close_menu", \
      "fallback": "", \
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
      "translate": "newline_1", \
      "fallback": "", \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.blank", \
      "fallback": "", \
      "font": "bigstone_sandbox:menu", \
      "shadow_color": 0, \
      "click_event": { \
        "action": "run_command", \
        "command": "trigger bigstone_sandbox_menu set -10" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.home", \
          "color": "white", \
          "font": "bigstone_sandbox:small_caps" \
        } \
      } \
    }, \
    { \
      "translate": "space.54", \
      "fallback": "", \
      "font": "space:default" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.blank", \
      "fallback": "", \
      "shadow_color": 0, \
      "font": "bigstone_sandbox:menu", \
      "click_event": { \
        "action": "run_command", \
        "command": "trigger bigstone_sandbox_menu set -29" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.saver", \
          "color": "green", \
          "font": "bigstone_sandbox:small_caps" \
        } \
      } \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.blank", \
      "fallback": "", \
      "shadow_color": 0, \
      "font": "bigstone_sandbox:menu", \
      "click_event": { \
        "action": "run_command", \
        "command": "trigger bigstone_sandbox_menu set -28" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.breaker", \
          "color": "red", \
          "font": "bigstone_sandbox:small_caps" \
        } \
      } \
    }, \
    { \
      "translate": "space.4", \
      "fallback": "", \
      "font": "space:default" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.blank", \
      "fallback": "", \
      "shadow_color": 0, \
      "font": "bigstone_sandbox:menu", \
      "click_event": { \
        "action": "run_command", \
        "command": "trigger bigstone_sandbox_menu set -9" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.search", \
          "color": "light_purple", \
          "font": "bigstone_sandbox:small_caps" \
        } \
      } \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.blank", \
      "fallback": "", \
      "font": "bigstone_sandbox:menu", \
      "shadow_color": 0, \
      "click_event": { \
        "action": "run_command", \
        "command": "trigger bigstone_sandbox_menu set -5" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.filter", \
          "color": "aqua", \
          "font": "bigstone_sandbox:small_caps" \
        } \
      } \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.blank", \
      "fallback": "", \
      "font": "bigstone_sandbox:menu", \
      "shadow_color": 0, \
      "click_event": { \
        "action": "run_command", \
        "command": "trigger bigstone_sandbox_menu set -7" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.import", \
          "color": "blue", \
          "font": "bigstone_sandbox:small_caps" \
        } \
      } \
    }, \
    { \
      "translate": "space.54", \
      "fallback": "", \
      "font": "space:default" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.blank", \
      "fallback": "", \
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
      "translate": "newline_1", \
      "fallback": "" \
    }, \
  ], \
  "width": 256 \
}

data modify storage bigstone_sandbox:data temp.body append value \
{ \
  "type": "minecraft:plain_message", \
  "contents": [ \
    { \
      "translate": "bigstone_sandbox.dialog_menu.background.bottom", \
      "font": "bigstone_sandbox:menu", \
      "shadow_color": 0 \
    } \
  ], \
  "width": 256 \
}