execute unless data storage bigstone_sandbox:data settings{"search":1b} run tellraw @s ["",{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.search_disabled","fallback":"Search by name has been disabled by an OP.","color":"yellow"}]
execute unless data storage bigstone_sandbox:data settings{"search":1b} run return fail

dialog show @s \
{ \
  "type": "minecraft:confirmation", \
  "title": { \
    "translate": "bigstone_sandbox.dialog_menu.search_menu", \
    "color": "gold", \
    "font": "bigstone_sandbox:small_caps" \
  }, \
  "body": { \
    "type": "minecraft:plain_message", \
    "contents": { \
      "text": "You can search for components by their name by putting a query below.", \
      "color": "yellow" \
    } \
  }, \
  "inputs": [ \
    { \
      "type": "minecraft:text", \
      "key": "", \
      "label": { \
        "text": "Enter the search query:", \
        "color": "gray" \
      } \
    } \
  ], \
  "can_close_with_escape": true, \
  "pause": false, \
  "after_action": "close", \
  "yes": { \
    "label": { \
      "text": "Search", \
      "color": "light_purple" \
    } \
  }, \
  "no": { \
    "label": { \
      "text": "Back", \
      "color": "yellow" \
    } \
  } \
}