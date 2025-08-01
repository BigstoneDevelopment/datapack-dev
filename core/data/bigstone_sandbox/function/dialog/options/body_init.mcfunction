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
      "translate": "bigstone_sandbox.dialog_menu.button.home", \
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
      "translate": "newline_1" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.blank", \
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
      "translate": "space.193", \
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
      "with": [ \
        { \
          "translate": "bigstone_sandbox.dialog_menu.toggle.off", \
          "color": "white", \
          "font": "bigstone_sandbox:menu", \
          "shadow_color": 0, \
          "click_event": { \
            "action": "run_command", \
            "command": "/trigger bigstone_sandbox_menu set 900" \
          }, \
          "hover_event": { \
            "action": "show_text", \
            "value": { \
              "translate": "bigstone_sandbox.dialog_menu.options.action", \
              "color": "gray", \
              "font": "bigstone_sandbox:small_caps" \
            } \
          } \
        } \
      ], \
      "color": "dark_gray", \
      "shadow_color": 0, \
      "extra": [ \
        { \
          "translate": "newline_1" \
        } \
      ] \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.options.open_info_dialog_on_join", \
      "with": [ \
        { \
          "translate": "bigstone_sandbox.dialog_menu.toggle.off", \
          "color": "white", \
          "font": "bigstone_sandbox:menu", \
          "shadow_color": 0, \
          "click_event": { \
            "action": "run_command", \
            "command": "/trigger bigstone_sandbox_menu set 901" \
          }, \
          "hover_event": { \
            "action": "show_text", \
            "value": { \
              "translate": "bigstone_sandbox.dialog_menu.options.action", \
              "color": "gray", \
              "font": "bigstone_sandbox:small_caps" \
            } \
          } \
        } \
      ], \
      "color": "dark_gray", \
      "shadow_color": 0, \
      "extra": [ \
        { \
          "translate": "newline_1" \
        } \
      ] \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.options.have_dialog_sound_effects", \
      "with": [ \
        { \
          "translate": "bigstone_sandbox.dialog_menu.toggle.off", \
          "color": "white", \
          "font": "bigstone_sandbox:menu", \
          "shadow_color": 0, \
          "click_event": { \
            "action": "run_command", \
            "command": "/trigger bigstone_sandbox_menu set 902" \
          }, \
          "hover_event": { \
            "action": "show_text", \
            "value": { \
              "translate": "bigstone_sandbox.dialog_menu.options.action", \
              "color": "gray", \
              "font": "bigstone_sandbox:small_caps" \
            } \
          } \
        } \
      ], \
      "color": "dark_gray", \
      "shadow_color": 0, \
      "extra": [ \
        { \
          "translate": "newline_1" \
        } \
      ] \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.options.enable_dialog_music", \
      "with": [ \
        { \
          "translate": "bigstone_sandbox.dialog_menu.toggle.off", \
          "color": "white", \
          "font": "bigstone_sandbox:menu", \
          "shadow_color": 0, \
          "click_event": { \
            "action": "run_command", \
            "command": "/trigger bigstone_sandbox_menu set 903" \
          }, \
          "hover_event": { \
            "action": "show_text", \
            "value": { \
              "translate": "bigstone_sandbox.dialog_menu.options.action", \
              "color": "gray", \
              "font": "bigstone_sandbox:small_caps" \
            } \
          } \
        } \
      ], \
      "color": "dark_gray", \
      "shadow_color": 0, \
      "extra": [ \
        { \
          "translate": "newline_1" \
        } \
      ] \
    }, \
    { \
      "translate": "newline_2" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.keybinds_subtitle", \
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
      "translate": "bigstone_sandbox.dialog_menu.options.sprint_and_sneak", \
      "with": [ \
        { \
          "translate": "bigstone_sandbox.dialog_menu.toggle.off", \
          "color": "white", \
          "font": "bigstone_sandbox:menu", \
          "shadow_color": 0, \
          "click_event": { \
            "action": "run_command", \
            "command": "/trigger bigstone_sandbox_menu set 905" \
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
          "keybind": "key.sneak" \
        }, \
        { \
          "keybind": "key.sprint" \
        } \
      ], \
      "color": "dark_gray", \
      "shadow_color": 0, \
      "extra": [ \
        { \
          "translate": "newline_1" \
        } \
      ] \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.options.double_sprint", \
      "with": [ \
        { \
          "translate": "bigstone_sandbox.dialog_menu.toggle.off", \
          "color": "white", \
          "font": "bigstone_sandbox:menu", \
          "shadow_color": 0, \
          "click_event": { \
            "action": "run_command", \
            "command": "/trigger bigstone_sandbox_menu set 906" \
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
          "keybind": "key.sneak" \
        }, \
        { \
          "keybind": "key.sprint" \
        } \
      ], \
      "color": "dark_gray", \
      "shadow_color": 0, \
      "extra": [ \
        { \
          "translate": "newline_1" \
        } \
      ] \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.options.double_sneak", \
      "with": [ \
        { \
          "translate": "bigstone_sandbox.dialog_menu.toggle.off", \
          "color": "white", \
          "font": "bigstone_sandbox:menu", \
          "shadow_color": 0, \
          "click_event": { \
            "action": "run_command", \
            "command": "/trigger bigstone_sandbox_menu set 907" \
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
          "keybind": "key.sneak" \
        }, \
        { \
          "keybind": "key.sprint" \
        } \
      ], \
      "color": "dark_gray", \
      "shadow_color": 0, \
      "extra": [ \
        { \
          "translate": "newline_1" \
        } \
      ] \
    }, \
    { \
      "translate": "newline_2" \
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
      "with": [ \
        { \
          "translate": "bigstone_sandbox.dialog_menu.toggle.off", \
          "color": "white", \
          "font": "bigstone_sandbox:menu", \
          "shadow_color": 0, \
          "click_event": { \
            "action": "run_command", \
            "command": "/trigger bigstone_sandbox_menu set 904" \
          }, \
          "hover_event": { \
            "action": "show_text", \
            "value": { \
              "translate": "bigstone_sandbox.dialog_menu.options.action", \
              "color": "gray", \
              "font": "bigstone_sandbox:small_caps" \
            } \
          } \
        } \
      ], \
      "color": "dark_gray", \
      "shadow_color": 0, \
      "extra": [ \
        { \
          "translate": "newline_1" \
        } \
      ] \
    }, \
        { \
      "translate": "bigstone_sandbox.dialog_menu.options.block_shape_highlight", \
      "with": [ \
        { \
          "translate": "bigstone_sandbox.dialog_menu.toggle.off", \
          "color": "white", \
          "font": "bigstone_sandbox:menu", \
          "shadow_color": 0, \
          "click_event": { \
            "action": "run_command", \
            "command": "/trigger bigstone_sandbox_menu set 908" \
          }, \
          "hover_event": { \
            "action": "show_text", \
            "value": { \
              "translate": "bigstone_sandbox.dialog_menu.options.action", \
              "color": "gray", \
              "font": "bigstone_sandbox:small_caps" \
            } \
          } \
        } \
      ], \
      "color": "dark_gray", \
      "shadow_color": 0, \
      "extra": [ \
        { \
          "translate": "newline_1" \
        } \
      ] \
    }, \
    { \
      "translate": "newline_1" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.admin_check", \
      "font": "bigstone_sandbox:menu", \
      "click_event": { \
        "action": "run_command", \
        "command": "/function bigstone_sandbox:dialog_action/admin_check {\"command\": \"function bigstone_sandbox:dialog_action/admin_options\"}" \
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
        "command": "/function bigstone_sandbox:dialog_action/admin_check {\"command\": \"function bigstone_sandbox:dialog_action/admin_options\"}" \
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
      "translate": "bigstone_sandbox.dialog_menu.version_info", \
      "color": "dark_gray", \
      "with": [ \
        "Unknown", \
        "Unknown", \
        { \
          "translate": "bigstone_sandbox.resource_version", \
          "fallback": "Unknown" \
        } \
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