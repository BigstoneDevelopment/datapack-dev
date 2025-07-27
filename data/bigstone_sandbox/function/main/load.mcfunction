scoreboard objectives add bigstone_sandbox_menu trigger
scoreboard objectives add bigstone_sandbox.loaded_index dummy
scoreboard objectives add bigstone_sandbox.selected_index dummy
scoreboard objectives add bigstone_sandbox.temp dummy
scoreboard objectives add bigstone_sandbox.sprint_cooldown dummy
scoreboard objectives add bigstone_sandbox.sneak_cooldown dummy
scoreboard objectives add bigstone_sandbox.join minecraft.custom:minecraft.leave_game

execute unless data storage bigstone_sandbox:components options.add run data modify storage bigstone_sandbox:components options.add set value true
execute unless data storage bigstone_sandbox:components options.delete run data modify storage bigstone_sandbox:components options.delete set value true
execute unless data storage bigstone_sandbox:components options.edit run data modify storage bigstone_sandbox:components options.edit set value true
execute unless data storage bigstone_sandbox:components options.private run data modify storage bigstone_sandbox:components options.private set value true
execute unless data storage bigstone_sandbox:components options.reload_message run data modify storage bigstone_sandbox:components options.reload_message set value true
execute unless data storage bigstone_sandbox:components options.import_logs run data modify storage bigstone_sandbox:components options.import_logs set value true
execute unless data storage bigstone_sandbox:components options.placement_highlight run data modify storage bigstone_sandbox:components options.placement_highlight set value true
execute unless data storage bigstone_sandbox:components options.search run data modify storage bigstone_sandbox:components options.search set value true

execute unless data storage bigstone_sandbox:components list.components run data modify storage bigstone_sandbox:components list.components set value []

execute if data storage bigstone_sandbox:components options{"reload_message":true} run tellraw @a ["",{"text":"\n\n\n"},{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"yellow",click_event:{"action":"open_url","url":"https://github.com/bigstonedevelopment/datapack"}},{"text":"\n"},{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.description","fallback":"A simple Bigstone Sandbox","color":"gray"},{"text":"\n"},{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.author","fallback":"@Bigstone Development - ","italic":true,"color":"gray"},{"translate":"bigstone_sandbox.tellraw_message.click_for_github","fallback":"Click for github","italic":true,"color":"yellow","click_event":{"action":"open_url","url":"https://github.com/bigstonedevelopment"}},{"text":"\n\n"},{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.reloaded","fallback":"Reloaded Functions, etc..","color":"gray"},{"text":"\n\n "}]
execute if data storage bigstone_sandbox:components temp.version{"game":"1.21.5-"} run tellraw @a ["",{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.unsupported_version","fallback":"This version isn't supported!","color":"red"}]