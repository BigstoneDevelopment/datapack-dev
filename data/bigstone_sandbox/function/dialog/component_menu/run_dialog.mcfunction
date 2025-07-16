$dialog show @s \
{ \
  "type": "minecraft:server_links", \
  "title": { \
    "translate": "bigstone_sandbox.dialog_menu.components_menu", \
    "color": "gold", \
    "font": "bigstone_sandbox:small_caps" \
  }, \
  "body": $(body), \
  "can_close_with_escape": true, \
  "pause": false, \
  "after_action": "none" \
}