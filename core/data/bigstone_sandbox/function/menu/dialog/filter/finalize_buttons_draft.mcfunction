execute unless data storage bigstone_sandbox:data temp.buttons.draft[0][0] run return run say draft couldnt run
execute unless data storage bigstone_sandbox:data temp.buttons.draft[0][0] run return run function bigstone_sandbox:menu/dialog/filter/init_buttons_draft

data modify storage bigstone_sandbox:data temp.buttons.draft[2] set from storage bigstone_sandbox:data temp.buttons.draft[0]

execute if data storage bigstone_sandbox:data temp.buttons.draft[2][{"translate": "bigstone_sandbox.dialog_menu.button.background"}] run data modify storage bigstone_sandbox:data temp.buttons.draft[2][{"translate": "bigstone_sandbox.dialog_menu.button.background"}] merge value \
{ \
  "translate" : "bigstone_sandbox.dialog_menu.button.blank", \
  "font": "bigstone_sandbox:menu", \
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