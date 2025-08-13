data modify storage bigstone_sandbox:data temp.buttons.draft[2] set from storage bigstone_sandbox:data temp.buttons.draft[0]

data modify storage bigstone_sandbox:data temp.buttons.draft[2][] merge value \
{ \
  "translate" : "bigstone_sandbox.dialog_menu.button.blank", \
  "shadow_color": 0, \
  "extra":[ \
    { \
      "translate": "space.1", \
      "font": "space:default" \
    } \
  ] \
} 

data modify storage bigstone_sandbox:data temp.buttons.list append from storage bigstone_sandbox:data temp.buttons.draft
data remove storage bigstone_sandbox:data temp.buttons.draft
function bigstone_sandbox:menu/dialog/filter/init_buttons_draft