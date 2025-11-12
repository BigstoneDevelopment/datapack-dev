data modify storage bigstone_sandbox:data temp.buttons.entry set value \
{ \
  "translate": "bigstone_sandbox.dialog_menu.button.background", \
  "font": "bigstone_sandbox:menu", \
  "color": "white", \
  "extra": [ \
    { \
      "translate": "space.-17", \
      "font": "space:default" \
    }, \
    { \
      "translate": "bigstone_sandbox.dialog_menu.button.port", \
      "font": "bigstone_sandbox:menu", \
      "color": "#000000" \
    }, \
    { \
      "translate": "space.5", \
      "font": "space:default" \
    } \
  ], \
  "click_event": { \
    "action": "run_command", \
    "command": "trigger bigstone_sandbox_menu set -1" \
  }, \
  "hover_event": { \
    "action": "show_text", \
    "value": { \
      "text": "ERROR" \
    } \
  } \
}