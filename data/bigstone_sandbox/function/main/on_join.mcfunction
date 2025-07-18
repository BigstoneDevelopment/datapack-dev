scoreboard players reset @s bigstone_sandbox.join

scoreboard players set @s bigstone_sandbox.last_dialog_page -10
scoreboard players set @s bigstone_sandbox.loaded_index 0

function bigstone_sandbox:list/make_filtered_list

tellraw @s ["",{"text":"\n\n\n"},{"text":"[","color":"dark_gray"},{"text":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Bigstone Sandbox","color":"yellow",click_event:{"action":"open_url","url":"https://github.com/bigstonedevelopment/datapack"}},{"text":"\n"},{"text":"[","color":"dark_gray"},{"text":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"A simple Bigstone editor","color":"gray"},{"text":"\n"},{"text":"[","color":"dark_gray"},{"text":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"@BigstoneDevelopment - ","italic":true,"color":"gray"},{"text":"Click for github","italic":true,"color":"yellow","click_event":{"action":"open_url","url":"https://github.com/bigstonedevelopment"}},{"text":"\n\n"},{"text":"[","color":"dark_gray"},{"text":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"To open the menu: ","color":"gray"},{"text":"Sprint + Sneak","color":"yellow"},{"text":"!","color":"gray"},{"text":"\n\n "}]
