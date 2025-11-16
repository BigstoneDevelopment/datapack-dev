# update version for check
function bigstone_sandbox:main/version/supported

# reload message
execute if data storage bigstone_sandbox:data settings{"reload_message":1b} run tellraw @a ["",{"text":" \n \n \n"},{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"yellow",click_event:{"action":"open_url","url":"https://sandbox.bigstone.dev"}},{"text":" \n"},{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.description","fallback":"A simple Bigstone Sandbox","color":"gray"},{"text":" \n"},{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.author","fallback":"@Bigstone Development - ","italic":true,"color":"gray"},{"translate":"bigstone_sandbox.tellraw_message.click_for_github","fallback":"Click for github","italic":true,"color":"yellow","click_event":{"action":"open_url","url":"https://github.com/bigstonedevelopment"}},{"text":" \n \n"},{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.reloaded","fallback":"","color":"gray"},{"translate":"bigstone_sandbox.dialog_menu.empty","fallback":"Download the ","color":"red"},{"translate":"bigstone_sandbox.dialog_menu.empty","fallback":"resource pack!","color":"blue",underlined:true,click_event:{action:"open_url",url:"https://github.com/BigstoneDevelopment/resource-pack/"}},{"text":" \n \n "}]
execute if data storage bigstone_sandbox:data temp.version{"supported":"✘"} run tellraw @a ["",{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.unsupported_version","fallback":"This version isn't supported!","color":"red"}]

# check maxCommandChainLength
#gamerule maxCommandChainLength 2147483647
execute store result storage bigstone_sandbox:data temp.maxCommandChainLength int 1 run gamerule maxCommandChainLength
execute store result score maxCommandChainLength bigstone_sandbox.temp run data get storage bigstone_sandbox:data temp.maxCommandChainLength 1
scoreboard players set minCommandChainLength bigstone_sandbox.temp 200000

execute if score maxCommandChainLength bigstone_sandbox.temp < minCommandChainLength bigstone_sandbox.temp run tellraw @a ["",{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.maxCommandChainLength_warning","fallback":"Warning: The gamerule maxCommandChainLength needs to be greater than 200000!","color":"red"}]

scoreboard players reset maxCommandChainLength bigstone_sandbox.temp
scoreboard players reset minCommandChainLength bigstone_sandbox.temp
data remove storage bigstone_sandbox:data temp.maxCommandChainLength

#function bigstone_sandbox:main/reset_entities not needed for now

# initial setup (only run on first load)
execute if data storage bigstone_sandbox:data {is_setup: 1b} run return fail
    data merge storage bigstone_sandbox:data {is_setup: 1b}
    forceload add 29999984 29999984 29999999 29999999

    tellraw @a ["",{"text":" \n \n \n"},{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"yellow",click_event:{"action":"open_url","url":"https://sandbox.bigstone.dev"}},{"text":" \n"},{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.description","fallback":"A simple Bigstone Sandbox","color":"gray"},{"text":" \n"},{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.author","fallback":"@Bigstone Development - ","italic":true,"color":"gray"},{"translate":"bigstone_sandbox.tellraw_message.click_for_github","fallback":"Click for github","italic":true,"color":"yellow","click_event":{"action":"open_url","url":"https://github.com/bigstonedevelopment"}},{"text":" \n \n"},{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.setup","fallback":"","color":"gray"},{"translate":"bigstone_sandbox.dialog_menu.empty","fallback":"Download the ","color":"red"},{"translate":"bigstone_sandbox.dialog_menu.empty","fallback":"resource pack!","color":"blue",underlined:true,click_event:{action:"open_url",url:"https://github.com/BigstoneDevelopment/resource-pack/"}},{"text":" \n \n "}]

    # load scoreboards
    scoreboard objectives add bigstone_sandbox_menu trigger [{text:"BS ",color:"gold"},{text:"Menu",color:"gray"}]
    scoreboard objectives add bigstone_sandbox.loaded_index dummy [{text:"BS ",color:"gold"},{text:"Loaded_index",color:"gray"}]
    scoreboard objectives add bigstone_sandbox.selected_index dummy [{text:"BS ",color:"gold"},{text:"Selected_index",color:"gray"}]
    scoreboard objectives add bigstone_sandbox.temp dummy [{text:"BS ",color:"gold"},{text:"Temp",color:"gray"}]
    scoreboard objectives add bigstone_sandbox.raycast dummy [{text:"BS ",color:"gold"},{text:"Raycast",color:"gray"}]
    scoreboard objectives add bigstone_sandbox.sprint_cooldown dummy [{text:"BS ",color:"gold"},{text:"Sprint_cooldown",color:"gray"}]
    scoreboard objectives add bigstone_sandbox.sneak_cooldown dummy [{text:"BS ",color:"gold"},{text:"Sneak_cooldown",color:"gray"}]
    scoreboard objectives add bigstone_sandbox.join minecraft.custom:minecraft.leave_game [{text:"BS ",color:"gold"},{text:"Join",color:"gray"}]

    scoreboard objectives add bigstone_sandbox.last_pos.x dummy [{text:"BS ",color:"gold"},{text:"Last_pos.x",color:"gray"}]
    scoreboard objectives add bigstone_sandbox.last_pos.y dummy [{text:"BS ",color:"gold"},{text:"Last_pos.y",color:"gray"}]
    scoreboard objectives add bigstone_sandbox.last_pos.z dummy [{text:"BS ",color:"gold"},{text:"Last_pos.z",color:"gray"}]
    scoreboard objectives add bigstone_sandbox.cast_mode dummy [{text:"BS ",color:"gold"},{text:"Cast_mode",color:"gray"}]
    scoreboard objectives add bigstone_sandbox.invalid_highlight dummy [{text:"BS ",color:"gold"},{text:"Invalid_highlight",color:"gray"}]
    scoreboard objectives add bigstone_sandbox.temp.import_total dummy [{text:"BS ",color:"gold"},{text:"Temp.import_total",color:"gray"}]
    scoreboard objectives add bigstone_sandbox.temp.import_percent dummy [{text:"BS ",color:"gold"},{text:"Temp.import_percent",color:"gray"}]
    scoreboard objectives add bigstone_sandbox.temp.import_done dummy [{text:"BS ",color:"gold"},{text:"Temp.import_done",color:"gray"}]


    #constants
    scoreboard objectives add consts dummy [{text:"BS ",color:"gold"},{text:"Consts",color:"gray"}]

    scoreboard players set #1 consts 1
    scoreboard players set #16 consts 16
    scoreboard players set #100 consts 100

    # load storage

    function character_lut:load

    data merge storage bigstone_sandbox:data \
    { \
        settings: { \
            highlightColor:{ \
                paste:{ \
                    color1: 626778336, \
                    color2: 622329855, \
                    color3: 621853627, \
                    color4: 630390783 \
                }, \
                select:{ \
                    color1: 627040347, \
                    color2: 627826023, \
                    color3: 626045773, \
                    color4: 630781844 \
                }, \
                delete:{ \
                    color1: 520060163, \
                    color2: 520060163, \
                    color3: 520060163, \
                    color4: 520060163 \
                },\
                invalid:{ \
                    color1: 520028160, \
                    color2: 520028160, \
                    color3: 520028160, \
                    color4: 520028160 \
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

    # show warning
    #execute store result storage bigstone_sandbox:data temp.maxCommandChainLength int 1 run gamerule maxCommandChainLength
    #execute store result score maxCommandChainLength bigstone_sandbox.temp run data get storage bigstone_sandbox:data temp.maxCommandChainLength 1
    #scoreboard players set minCommandChainLength bigstone_sandbox.temp 200000

    #execute if score maxCommandChainLength bigstone_sandbox.temp < minCommandChainLength bigstone_sandbox.temp run tellraw @a ["",{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.maxCommandChainLength_warning","fallback":"Warning: The gamerule maxCommandChainLength needs to be greater than 200000!","color":"red"}]
        
    #scoreboard players reset maxCommandChainLength bigstone_sandbox.temp
    #scoreboard players reset minCommandChainLength bigstone_sandbox.temp
    #data remove storage bigstone_sandbox:data temp.maxCommandChainLength

    # auto fix (quick setup)
    gamerule maxCommandChainLength 200000