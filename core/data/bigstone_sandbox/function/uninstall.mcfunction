tellraw @s ["",{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.cleaning_up","fallback":"Cleaning up. Please wait...","color":"gray"}]

scoreboard objectives remove consts
data remove storage bigstone_sandbox:data settings.highlightColour

tellraw @s ["",{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.uninstalled","fallback":"Done! You can remove the datapack now.","color":"gray"}]
