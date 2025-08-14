data modify storage bigstone_sandbox:data temp.buttons.entry set value \
{ \
  "translate": "bigstone_sandbox.dialog_menu.button.blank_shadowless", \
  "font": "bigstone_sandbox:menu", \
  "color": "white", \
  "shadow_color": 0, \
  "extra": [ \
    { \
      "translate": "space.1", \
      "font": "space:default" \
    } \
  ], \
  "click_event": { \
    "action": "run_command", \
    "command": "trigger bigstone_sandbox_menu set -5" \
  }, \
  "hover_event": { \
    "action": "show_text", \
    "value": { \
      "text": "" \
    } \
  } \
}