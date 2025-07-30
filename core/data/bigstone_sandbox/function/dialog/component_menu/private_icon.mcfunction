data modify storage bigstone_sandbox:components temp.add_item.description.contents[1] set value \
{ \
  "translate": "bigstone_sandbox.dialog_menu.icon.private", \
  "font": "bigstone_sandbox:menu", \
  "shadow_color": 0, \
  "hover_event": { \
    "action": "show_text", \
    "value": { \
      "translate": "bigstone_sandbox.dialog_menu.private", \
      "color": "yellow", \
      "font": "bigstone_sandbox:small_caps" \
    } \
  } \
}