# Handle player movement disabling
ride @p[tag=bs_has_menu_item] mount @s

# Interaction prompt
title @p[tag=bs_has_menu_item] actionbar ["",{text:"ʀɪɢʜᴛ ᴄʟɪᴄᴋ",color:"yellow"},{text:" ᴛᴏ ᴏᴘᴇɴ ᴍᴇɴᴜ",color:"gray"}]

# Handle removing minecart
execute unless predicate bigstone_sandbox:menu/passenger_is_player_holding_menu_item run function bigstone_sandbox:menu/minecart/removecart

# Minecart tick loop
function bigstone_sandbox:menu/container/tick