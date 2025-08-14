data modify storage bigstone_sandbox:data temp.body set value \
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
      "translate": "space.89", \
      "font": "space:default" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.filter", \
      "font": "bigstone_sandbox:menu", \
      "click_event": { \
        "action": "run_command", \
        "command": "trigger bigstone_sandbox_menu set -18" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.apply_filter", \
          "color": "aqua", \
          "font": "bigstone_sandbox:small_caps" \
        } \
      } \
    }, \
    { \
      "translate": "space.89", \
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
      "translate": "space.89", \
      "font": "space:default" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.blank", \
      "shadow_color": 0, \
      "font": "bigstone_sandbox:menu", \
      "click_event": { \
        "action": "run_command", \
        "command": "trigger bigstone_sandbox_menu set -18" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.apply_filter", \
          "color": "aqua", \
          "font": "bigstone_sandbox:small_caps" \
        } \
      } \
    }, \
    { \
      "translate": "space.89", \
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
      "translate": "bigstone_sandbox.dialog_menu.background.section_break", \
      "color": "gray", \
      "font": "bigstone_sandbox:menu", \
      "shadow_color": 0 \
    }, \
    { \
      "translate": "newline_1" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.included_filters", \
      "color": "gray", \
      "extra": [ \
        { \
          "text": "", \
          "color": "white" \
        }, \
        [ \
          { \
            "translate": "newline_1" \
          }, \
          { \
            "translate": "bigstone_sandbox.dialog_menu.background.middle", \
            "color": "white", \
            "font": "bigstone_sandbox:menu", \
            "shadow_color": 0 \
          }, \
          { \
            "translate": "newline_1" \
          } \
        ] \
      ] \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.background.section_break", \
      "color": "gray", \
      "font": "bigstone_sandbox:menu", \
      "shadow_color": 0 \
    }, \
    { \
      "translate": "newline_1" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.excluded_filters", \
      "color": "gray", \
      "extra": [ \
        { \
          "text": "", \
          "color": "white" \
        }, \
        [ \
          { \
            "translate": "newline_1" \
          }, \
          { \
            "translate": "bigstone_sandbox.dialog_menu.background.middle", \
            "color": "white", \
            "font": "bigstone_sandbox:menu", \
            "shadow_color": 0 \
          }, \
          { \
            "translate": "newline_1" \
          } \
        ] \
      ] \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.background.section_break_2", \
      "color": "gray", \
      "font": "bigstone_sandbox:menu", \
      "shadow_color": 0 \
    }, \
    { \
      "translate": "newline_1" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.blank_shadowless", \
      "color": "white", \
      "font": "bigstone_sandbox:menu", \
      "shadow_color": 0, \
      "click_event": { \
        "action": "run_command", \
        "command": "/trigger bigstone_sandbox_menu set -19" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.tags" \
        } \
      }, \
      "extra": [ \
        { \
          "translate": "space.-17", \
          "font": "space:default" \
        }, \
        { \
          "translate": "bigstone_sandbox.dialog_menu.button.tag", \
          "color": "dark_gray", \
          "font": "bigstone_sandbox:menu" \
        }, \
        { \
          "translate": "space.-13", \
          "font": "space:default" \
        }, \
        { \
          "translate": "space.17", \
          "font": "space:default" \
        } \
      ] \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.blank_shadowless", \
      "color": "white", \
      "font": "bigstone_sandbox:menu", \
      "shadow_color": 0, \
      "click_event": { \
        "action": "run_command", \
        "command": "/trigger bigstone_sandbox_menu set -20" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.ports" \
        } \
      }, \
      "extra": [ \
        { \
          "translate": "space.-17", \
          "font": "space:default" \
        }, \
        { \
          "translate": "bigstone_sandbox.dialog_menu.button.port", \
          "color": "white", \
          "font": "bigstone_sandbox:menu" \
        }, \
        { \
          "translate": "space.-12", \
          "font": "space:default" \
        }, \
        [ \
          { \
            "translate": "space.-2", \
            "font": "space:default" \
          }, \
          { \
            "translate": "bigstone_sandbox.dialog_menu.button.selected_tab", \
            "color": "white", \
            "shadow_color": 0, \
            "font": "bigstone_sandbox:menu" \
          }, \
          { \
            "translate": "space.0", \
            "font": "space:default" \
          } \
        ] \
      ] \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.blank_shadowless", \
      "color": "white", \
      "font": "bigstone_sandbox:menu", \
      "shadow_color": 0, \
      "click_event": { \
        "action": "run_command", \
        "command": "/trigger bigstone_sandbox_menu set -21" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.creators" \
        } \
      }, \
      "extra": [ \
        { \
          "translate": "space.-17", \
          "font": "space:default" \
        }, \
        { \
          "translate": "bigstone_sandbox.dialog_menu.button.creator", \
          "color": "dark_gray", \
          "font": "bigstone_sandbox:menu" \
        }, \
        { \
          "translate": "space.-14", \
          "font": "space:default" \
        }, \
        { \
          "translate": "space.16", \
          "font": "space:default" \
        } \
      ] \
    }, \
    { \
      "translate": "newline_1" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.blank_shadowless", \
      "color": "white", \
      "font": "bigstone_sandbox:menu", \
      "shadow_color": 0, \
      "click_event": { \
        "action": "run_command", \
        "command": "/trigger bigstone_sandbox_menu set -19" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.tags" \
        } \
      }, \
      "extra": [ \
        { \
          "translate": "space.1", \
          "font": "space:default" \
        } \
      ] \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.blank_shadowless", \
      "color": "white", \
      "font": "bigstone_sandbox:menu", \
      "shadow_color": 0, \
      "click_event": { \
        "action": "run_command", \
        "command": "/trigger bigstone_sandbox_menu set -20" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.ports" \
        } \
      }, \
      "extra": [ \
        { \
          "translate": "space.1", \
          "font": "space:default" \
        } \
      ] \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.blank_shadowless", \
      "color": "white", \
      "font": "bigstone_sandbox:menu", \
      "shadow_color": 0, \
      "click_event": { \
        "action": "run_command", \
        "command": "/trigger bigstone_sandbox_menu set -21" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.creators" \
        } \
      } \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.available_filters", \
      "extra": [ \
        { \
          "text": "", \
          "color": "white" \
        }, \
        [ \
          { \
            "translate": "newline_1" \
          }, \
          { \
            "translate": "bigstone_sandbox.dialog_menu.background.middle", \
            "color": "white", \
            "font": "bigstone_sandbox:menu", \
            "shadow_color": 0 \
          }, \
          { \
            "translate": "newline_1" \
          } \
        ] \
      ] \
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
}