# load scoreboards
scoreboard objectives add bigstone_sandbox_menu trigger
scoreboard objectives add bigstone_sandbox.loaded_index dummy
scoreboard objectives add bigstone_sandbox.selected_index dummy
scoreboard objectives add bigstone_sandbox.temp dummy
scoreboard objectives add bigstone_sandbox.raycast dummy
scoreboard objectives add bigstone_sandbox.sprint_cooldown dummy
scoreboard objectives add bigstone_sandbox.sneak_cooldown dummy
scoreboard objectives add bigstone_sandbox.join minecraft.custom:minecraft.leave_game
scoreboard objectives add bigstone_sandbox dummy

scoreboard objectives add consts dummy

scoreboard players set #24 consts 24
scoreboard players set #16 consts 16
scoreboard players set #1 consts 1
scoreboard players set #10 consts 10
scoreboard players set #100 consts 100
scoreboard players set #256 consts 256
scoreboard players set #1000 consts 1000

# load storage
execute unless data storage bigstone_sandbox:components options.add run data modify storage bigstone_sandbox:components options.add set value true
execute unless data storage bigstone_sandbox:components options.delete run data modify storage bigstone_sandbox:components options.delete set value true
execute unless data storage bigstone_sandbox:components options.edit run data modify storage bigstone_sandbox:components options.edit set value true
execute unless data storage bigstone_sandbox:components options.private run data modify storage bigstone_sandbox:components options.private set value true
execute unless data storage bigstone_sandbox:components options.reload_message run data modify storage bigstone_sandbox:components options.reload_message set value true
execute unless data storage bigstone_sandbox:components options.import_logs run data modify storage bigstone_sandbox:components options.import_logs set value true
execute unless data storage bigstone_sandbox:components options.placement_highlight run data modify storage bigstone_sandbox:components options.placement_highlight set value true
execute unless data storage bigstone_sandbox:components options.search run data modify storage bigstone_sandbox:components options.search set value true

execute unless data storage bigstone_sandbox:components list.components run data modify storage bigstone_sandbox:components list.components set value []

data merge storage bigstone_sandbox:data {is_setup: 1b}

data merge storage bigstone:settings { \
    instantSnap:1b, \
    highlightColour:{ \
        paste:{ \
            colour1: 626778336, \
            colour2: 622329855, \
            colour3: 621853627, \
            colour4: 630390783 \
        }, \
        select:{ \
            colour1: 627040347, \
            colour2: 627826023, \
            colour3: 626045773, \
            colour4: 630781844 \
        } \
    } \
}

# reload message
execute if data storage bigstone_sandbox:components options{"reload_message":true} run tellraw @a ["",{"text":" \n \n \n"},{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"yellow",click_event:{"action":"open_url","url":"https://github.com/bigstonedevelopment/datapack"}},{"text":" \n"},{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.description","fallback":"A simple Bigstone Sandbox","color":"gray"},{"text":" \n"},{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.author","fallback":"@Bigstone Development - ","italic":true,"color":"gray"},{"translate":"bigstone_sandbox.tellraw_message.click_for_github","fallback":"Click for github","italic":true,"color":"yellow","click_event":{"action":"open_url","url":"https://github.com/bigstonedevelopment"}},{"text":" \n \n"},{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.reloaded","fallback":"Reloaded Functions, etc..","color":"gray"},{"text":" \n \n "}]
execute if data storage bigstone_sandbox:components temp.version{"game":"1.21.5-"} run tellraw @a ["",{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.unsupported_version","fallback":"This version isn't supported!","color":"red"}]

function bigstone_sandbox:main/reset_entities

# initial setup
execute store result score #run_setup bigstone_sandbox run data get storage bigstone_sandbox:data is_setup
execute if score #run_setup bigstone_sandbox matches 1 run return fail
scoreboard players set #component_ID_count_0 bigstone_sandbox 0
scoreboard players set #component_ID_count_1 bigstone_sandbox 0
forceload add 29999984 29999984 29999999 29999999