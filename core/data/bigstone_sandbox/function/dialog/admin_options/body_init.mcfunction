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
      "translate": "bigstone_sandbox.dialog_menu.button.back", \
      "font": "bigstone_sandbox:menu", \
      "click_event": { \
        "action": "run_command", \
        "command": "trigger bigstone_sandbox_menu set -13" \
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
      "translate": "newline_1" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.blank", \
      "font": "bigstone_sandbox:menu", \
      "shadow_color": 0, \
      "click_event": { \
        "action": "run_command", \
        "command": "trigger bigstone_sandbox_menu set -13" \
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
      "translate": "bigstone_sandbox.dialog_menu.admin_options", \
      "font": "bigstone_sandbox:small_caps", \
      "shadow_color": 0 \
    }, \
    { \
      "translate": "newline_2" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.permission_subtitle", \
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
      "translate": "bigstone_sandbox.dialog_menu.admin_options.players_can_add_public_components", \
      "with": [ \
        { \
          "translate": "bigstone_sandbox.dialog_menu.toggle.off", \
          "color": "white", \
          "font": "bigstone_sandbox:menu", \
          "shadow_color": 0, \
          "click_event": { \
            "action": "run_command", \
            "command": "/trigger bigstone_sandbox_menu set 800" \
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
      "translate": "bigstone_sandbox.dialog_menu.admin_options.players_can_delete_public_components", \ 
      "with": [ \
        { \
          "translate": "bigstone_sandbox.dialog_menu.toggle.off", \
          "color": "white", \
          "font": "bigstone_sandbox:menu", \
          "shadow_color": 0, \
          "click_event": { \
            "action": "run_command", \
            "command": "/trigger bigstone_sandbox_menu set 801" \
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
      "translate": "bigstone_sandbox.dialog_menu.admin_options.players_can_edit_public_components", \
      "with": [ \
        { \
          "translate": "bigstone_sandbox.dialog_menu.toggle.off", \
          "color": "white", \
          "font": "bigstone_sandbox:menu", \
          "shadow_color": 0, \
          "click_event": { \
            "action": "run_command", \
            "command": "/trigger bigstone_sandbox_menu set 802" \
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
      "translate": "bigstone_sandbox.dialog_menu.admin_options.players_can_have_private_components", \
      "with": [ \
        { \
          "translate": "bigstone_sandbox.dialog_menu.toggle.off", \
          "color": "white", \
          "font": "bigstone_sandbox:menu", \
          "shadow_color": 0, \
          "click_event": { \
            "action": "run_command", \
            "command": "/trigger bigstone_sandbox_menu set 803" \
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
      "translate": "bigstone_sandbox.dialog_menu.admin_options.reload_message", \
      "with": [ \
        { \
          "translate": "bigstone_sandbox.dialog_menu.toggle.off", \
          "color": "white", \
          "font": "bigstone_sandbox:menu", \
          "shadow_color": 0, \
          "click_event": { \
            "action": "run_command", \
            "command": "/trigger bigstone_sandbox_menu set 804" \
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
      "translate": "bigstone_sandbox.dialog_menu.admin_options.import_logs", \
      "with": [ \
        { \
          "translate": "bigstone_sandbox.dialog_menu.toggle.off", \
          "color": "white", \
          "font": "bigstone_sandbox:menu", \
          "shadow_color": 0, \
          "click_event": { \
            "action": "run_command", \
            "command": "/trigger bigstone_sandbox_menu set 805" \
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
      "translate": "bigstone_sandbox.dialog_menu.admin_options.command_feedback", \
      "with": [ \
        { \
          "translate": "bigstone_sandbox.dialog_menu.toggle.off", \
          "color": "white", \
          "font": "bigstone_sandbox:menu", \
          "shadow_color": 0, \
          "click_event": { \
            "action": "run_command", \
            "command": "/trigger bigstone_sandbox_menu set 806" \
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
      "translate": "bigstone_sandbox.dialog_menu.performance_subtitle", \
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
      "translate": "bigstone_sandbox.dialog_menu.admin_options.global_placement_highlight_box", \
      "with": [ \
        { \
          "translate": "bigstone_sandbox.dialog_menu.toggle.off", \
          "color": "white", \
          "font": "bigstone_sandbox:menu", \
          "shadow_color": 0, \
          "click_event": { \
            "action": "run_command", \
            "command": "/trigger bigstone_sandbox_menu set 807" \
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
      "translate": "bigstone_sandbox.dialog_menu.admin_options.instant_snap", \
      "with": [ \
        { \
          "translate": "bigstone_sandbox.dialog_menu.toggle.off", \
          "color": "white", \
          "font": "bigstone_sandbox:menu", \
          "shadow_color": 0, \
          "click_event": { \
            "action": "run_command", \
            "command": "/trigger bigstone_sandbox_menu set 809" \
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
      "translate": "bigstone_sandbox.dialog_menu.admin_options.allow_players_to_search", \
      "with": [ \
        { \
          "translate": "bigstone_sandbox.dialog_menu.toggle.off", \
          "color": "white", \
          "font": "bigstone_sandbox:menu", \
          "shadow_color": 0, \
          "click_event": { \
            "action": "run_command", \
            "command": "/trigger bigstone_sandbox_menu set 808" \
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
      "translate": "bigstone_sandbox.dialog_menu.background.bottom", \
      "font": "bigstone_sandbox:menu", \
      "shadow_color": 0 \
    } \
  ], \
  "width": 256 \
}