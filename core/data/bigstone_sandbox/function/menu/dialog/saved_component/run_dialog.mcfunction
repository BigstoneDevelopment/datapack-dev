$dialog show @s \
{ \
  "type": "minecraft:server_links", \
  "title": { \
    "translate": "bigstone_sandbox.dialog_menu.saved_component", \
    "color": "gold", \
    "font": "bigstone_sandbox:small_caps" \
  }, \
  "body": $(body), \
  "inputs": [ \
    { \
      "type": "minecraft:text", \
      "key": "item_data", \
      "label": { \
        "translate": "bigstone_sandbox.dialog_menu.open_in_browser", \
        "color": "gray" \
      }, \
      "initial": '$(source_data)', \
      "max_length": 2147483647, \
      "multiline": { \
        "height": 128 \
      } \
    } \
  ], \
  "can_close_with_escape": true, \
  "pause": false, \
  "after_action": "none" \
}