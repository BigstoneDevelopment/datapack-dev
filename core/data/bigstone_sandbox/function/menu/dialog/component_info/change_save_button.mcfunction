data modify storage bigstone_sandbox:data temp.body[2].contents[{"hover_event":{"value":{"translate": "bigstone_sandbox.dialog_menu.save"}}}] merge value \
{ \
  "font": "bigstone_sandbox:menu", \
  "click_event": { \
    "action": "run_command", \
    "command": "trigger bigstone_sandbox_menu set -2" \
  }, \
  "hover_event": { \
    "action": "show_text", \
    "value": { \
      "translate": "bigstone_sandbox.dialog_menu.delete", \
      "color": "red", \
      "font": "bigstone_sandbox:small_caps" \
    } \
  } \
}

data modify storage bigstone_sandbox:data temp.body[2].contents[{"translate": "bigstone_sandbox.dialog_menu.button.save"}] merge value \
{ \
  "translate": "bigstone_sandbox.dialog_menu.button.delete" \
}