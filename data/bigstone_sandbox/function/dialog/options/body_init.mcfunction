data modify storage bigstone_sandbox:components temp.body prepend value \
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
      "translate": "bigstone_sandbox.dialog_menu.button.home", \
      "font": "bigstone_sandbox:menu", \
      "click_event": { \
        "action": "run_command", \
        "command": "trigger bigstone_menu set -10" \
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
      "translate": "space.193", \
      "font": "space:default" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.close_menu", \
      "font": "bigstone_sandbox:menu", \
      "click_event": { \
        "action": "run_command", \
        "command": "trigger bigstone_menu set -1" \
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
      "font": "bigstone_sandbox:menu", \
      "shadow_color": 0, \
      "click_event": { \
        "action": "run_command", \
        "command": "trigger bigstone_menu set -10" \
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
      "translate": "space.193", \
      "font": "space:default" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.blank", \
      "shadow_color": 0, \
      "font": "bigstone_sandbox:menu", \
      "click_event": { \
        "action": "run_command", \
        "command": "trigger bigstone_menu set -1" \
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
      "translate": "bigstone_sandbox.dialog_menu.options", \
      "font": "bigstone_sandbox:small_caps", \
      "shadow_color": 0 \
    }, \
    { \
      "translate": "newline_2" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.ui_subtitle", \
      "color": "gray", \
      "shadow_color": 0 \
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
      "translate": "newline_1" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.options.open_components_menu_by_default", \
      "color": "dark_gray", \
      "shadow_color": 0, \
      "extra": [ \
        { \
          "text": " " \
        }, \
        { \
          "translate": "bigstone_sandbox.dialog_menu.toggle.off", \
          "fallback": "◆", \
          "color": "white", \
          "font": "bigstone_sandbox:menu", \
          "shadow_color": 0, \
          "click_event": { \
            "action": "run_command", \
            "command": "/trigger bigstone_menu set 900" \
          }, \
          "hover_event": { \
            "action": "show_text", \
            "value": { \
              "translate": "bigstone_sandbox.dialog_menu.options.action", \
              "color": "gray", \
              "font": "bigstone_sandbox:small_caps" \
            } \
          } \
        }, \
        { \
          "translate": "newline_1" \
        } \
      ] \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.options.open_info_dialog_on_join", \
      "color": "dark_gray", \
      "shadow_color": 0, \
      "extra": [ \
        { \
          "text": " " \
        }, \
        { \
          "translate": "bigstone_sandbox.dialog_menu.toggle.off", \
          "color": "white", \
          "font": "bigstone_sandbox:menu", \
          "shadow_color": 0, \
          "click_event": { \
            "action": "run_command", \
            "command": "/trigger bigstone_menu set 901" \
          }, \
          "hover_event": { \
            "action": "show_text", \
            "value": { \
              "translate": "bigstone_sandbox.dialog_menu.options.action", \
              "color": "gray", \
              "font": "bigstone_sandbox:small_caps" \
            } \
          } \
        }, \
        { \
          "translate": "newline_1" \
        } \
      ] \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.options.have_dialog_sound_effects", \
      "color": "dark_gray", \
      "shadow_color": 0, \
      "extra": [ \
        { \
          "text": " " \
        }, \
        { \
          "translate": "bigstone_sandbox.dialog_menu.toggle.off", \
          "color": "white", \
          "font": "bigstone_sandbox:menu", \
          "shadow_color": 0, \
          "click_event": { \
            "action": "run_command", \
            "command": "/trigger bigstone_menu set 902" \
          }, \
          "hover_event": { \
            "action": "show_text", \
            "value": { \
              "translate": "bigstone_sandbox.dialog_menu.options.action", \
              "color": "gray", \
              "font": "bigstone_sandbox:small_caps" \
            } \
          } \
        }, \
        { \
          "translate": "newline_1" \
        } \
      ] \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.options.enable_dialog_music", \
      "color": "dark_gray", \
      "shadow_color": 0, \
      "extra": [ \
        { \
          "text": " " \
        }, \
        { \
          "translate": "bigstone_sandbox.dialog_menu.toggle.off", \
          "color": "white", \
          "font": "bigstone_sandbox:menu", \
          "shadow_color": 0, \
          "click_event": { \
            "action": "run_command", \
            "command": "/trigger bigstone_menu set 903" \
          }, \
          "hover_event": { \
            "action": "show_text", \
            "value": { \
              "translate": "bigstone_sandbox.dialog_menu.options.action", \
              "color": "gray", \
              "font": "bigstone_sandbox:small_caps" \
            } \
          } \
        }, \
        { \
          "translate": "newline_1" \
        } \
      ] \
    }, \
    { \
      "translate": "newline_3" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.ingame_subtitle", \
      "color": "gray", \
      "shadow_color": 0 \
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
      "translate": "newline_1" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.options.placement_highlight_box", \
      "color": "dark_gray", \
      "shadow_color": 0, \
      "extra": [ \
        { \
          "text": " " \
        }, \
        { \
          "translate": "bigstone_sandbox.dialog_menu.toggle.off", \
          "color": "white", \
          "font": "bigstone_sandbox:menu", \
          "shadow_color": 0, \
          "click_event": { \
            "action": "run_command", \
            "command": "/trigger bigstone_menu set 904" \
          }, \
          "hover_event": { \
            "action": "show_text", \
            "value": { \
              "translate": "bigstone_sandbox.dialog_menu.options.action", \
              "color": "gray", \
              "font": "bigstone_sandbox:small_caps" \
            } \
          } \
        }, \
        { \
          "translate": "newline_1" \
        } \
      ] \
    }, \
    { \
      "translate": "newline_1" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.admin", \
      "font": "bigstone_sandbox:menu", \
      "click_event": { \
        "action": "run_command", \
        "command": "function bigstone_sandbox:dialog_action/admin_options" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.admin_options", \
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
      "font": "bigstone_sandbox:menu", \
      "shadow_color": 0, \
      "click_event": { \
        "action": "run_command", \
        "command": "trigger bigstone_menu set -14" \
      }, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.admin_options", \
          "color": "red", \
          "font": "bigstone_sandbox:small_caps" \
        } \
      } \
    }, \
    { \
      "translate": "newline_2" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.credits_line1", \
      "color": "dark_gray", \
      "shadow_color": 0, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.click_event_help", \
          "color": "gray", \
          "font": "bigstone_sandbox:small_caps" \
        } \
      }, \
      "click_event": { \
        "action": "open_url", \
        "url": "https://github.com/bigstonedevelopment" \
      } \
    }, \
    { \
      "translate": "newline_1" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.credits_line2", \
      "color": "dark_gray", \
      "shadow_color": 0, \
      "hover_event": { \
        "action": "show_text", \
        "value": { \
          "translate": "bigstone_sandbox.dialog_menu.click_event_help", \
          "color": "gray", \
          "font": "bigstone_sandbox:small_caps" \
        } \
      }, \
      "click_event": { \
        "action": "open_url", \
        "url": "https://github.com/bigstonedevelopment" \
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
}