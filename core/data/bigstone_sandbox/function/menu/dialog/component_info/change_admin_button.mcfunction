data modify storage bigstone_sandbox:data temp.body[2].contents[{"hover_event":{"value":{"translate": "bigstone_sandbox.dialog_menu.admin_delete"}}}] merge value \
{ \
  "font": "bigstone_sandbox:menu", \
  "click_event": { \
    "action": "run_command", \
    "command": "trigger bigstone_sandbox_menu set -22" \
  }, \
  "hover_event": { \
    "action": "show_text", \
    "value": { \
      "translate": "bigstone_sandbox.dialog_menu.admin_delete", \
      "color": "dark_red", \
      "font": "bigstone_sandbox:small_caps" \
    } \
  } \
}

data modify storage bigstone_sandbox:data temp.body[2].contents[{"translate": "bigstone_sandbox.dialog_menu.button.admin_check"}] merge value \
{ \
  "translate": "bigstone_sandbox.dialog_menu.button.admin_delete" \
}