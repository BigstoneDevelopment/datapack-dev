# reload message
execute if data storage bigstone_sandbox:data settings{"reload_message":true} run tellraw @a ["",{"text":" \n \n \n"},{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"yellow",click_event:{"action":"open_url","url":"https://github.com/bigstonedevelopment/datapack"}},{"text":" \n"},{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.description","fallback":"A simple Bigstone Sandbox","color":"gray"},{"text":" \n"},{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.author","fallback":"@Bigstone Development - ","italic":true,"color":"gray"},{"translate":"bigstone_sandbox.tellraw_message.click_for_github","fallback":"Click for github","italic":true,"color":"yellow","click_event":{"action":"open_url","url":"https://github.com/bigstonedevelopment"}},{"text":" \n \n"},{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.reloaded","fallback":"Reloaded Functions, etc..","color":"gray"},{"text":" \n \n "}]
execute if data storage bigstone_sandbox:data temp.version{"game":"1.21.5-"} run tellraw @a ["",{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.unsupported_version","fallback":"This version isn't supported!","color":"red"}]

#function bigstone_sandbox:main/reset_entities not needed for now

# initial setup (only run on first load)

execute if data storage bigstone_sandbox:data {is_setup: 1b} run return fail
    data merge storage bigstone_sandbox:data {is_setup: 1b}
    scoreboard players set #component_ID_count_0 bigstone_sandbox 0
    scoreboard players set #component_ID_count_1 bigstone_sandbox 0
    forceload add 29999984 29999984 29999999 29999999

    # load scoreboards
    scoreboard objectives add bigstone_sandbox_menu trigger
    scoreboard objectives add bigstone_sandbox.loaded_index dummy
    scoreboard objectives add bigstone_sandbox.selected_index dummy
    scoreboard objectives add bigstone_sandbox.temp dummy
    scoreboard objectives add bigstone_sandbox.raycast dummy
    scoreboard objectives add bigstone_sandbox.sprint_cooldown dummy
    scoreboard objectives add bigstone_sandbox.sneak_cooldown dummy
    scoreboard objectives add bigstone_sandbox.join minecraft.custom:minecraft.leave_game

    scoreboard objectives add bigstone_sandbox.last_pos.x dummy
    scoreboard objectives add bigstone_sandbox.last_pos.y dummy
    scoreboard objectives add bigstone_sandbox.last_pos.z dummy
    scoreboard objectives add bigstone_sandbox.cast_mode dummy
    scoreboard objectives add bigstone_sandbox.invalid_highlight dummy



    #constants
    scoreboard objectives add consts dummy

    scoreboard players set #16 consts 16

    # load storage

    function bigstone_sandbox:main/storage/characters

    data merge storage bigstone_sandbox:data \
    { \
        settings: { \
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
                }, \
                delete:{ \
                    colour1: 520060163, \
                    colour2: 520060163, \
                    colour3: 520060163, \
                    colour4: 520060163 \
                },\
                invalid:{ \
                    colour1: 520028160, \
                    colour2: 520028160, \
                    colour3: 520028160, \
                    colour4: 520028160 \
                },\
            }, \
            add: true, \
            delete: true, \
            edit: true, \
            private: true, \
            reload_message: true, \
            import_logs: true, \
            placement_highlight: true, \
            search: true \
        }, \
        list:{ \
            components: [] \
        } \
    }