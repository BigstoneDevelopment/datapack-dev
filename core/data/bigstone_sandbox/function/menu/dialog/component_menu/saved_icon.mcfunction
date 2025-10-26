data modify storage bigstone_sandbox:data temp.add_item.description.contents[{"translate": "bigstone_sandbox.dialog_menu.icon.public"}] set value \
{ \
  "translate": "bigstone_sandbox.dialog_menu.icon.saved", \
  "font": "bigstone_sandbox:menu", \
  "shadow_color": 0, \
  "hover_event": { \
    "action": "show_text", \
    "value": { \
      "translate": "bigstone_sandbox.dialog_menu.saved", \
      "color": "red", \
      "font": "bigstone_sandbox:small_caps" \
    } \
  } \
}