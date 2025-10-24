# get last item from list
data remove storage bigstone_sandbox:data import
data modify storage bigstone_sandbox:data import set from storage bigstone_sandbox:data temp.import_list[-1]

# run add function
function bigstone_sandbox:list/add_public_item

# calc progress
scoreboard players operation @s bigstone_sandbox.temp.import_done += #1 consts
scoreboard players operation @s bigstone_sandbox.temp.import_percent = @s bigstone_sandbox.temp.import_done
scoreboard players operation @s bigstone_sandbox.temp.import_percent *= #100 consts
scoreboard players operation @s bigstone_sandbox.temp.import_percent /= @s bigstone_sandbox.temp.import_total

# progress message
execute if data storage bigstone_sandbox:data settings{"import_logs":1b} run tellraw @s [ \
    "", \
    {"text":"[","color":"dark_gray"}, \
    {"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"}, \
    {"text":"] ","color":"dark_gray"}, \
    {"text":"Import progress: ","color":"gray"}, \
    {"score":{"name":"@s","objective":"bigstone_sandbox.temp.import_done"},"color":"yellow"}, \
    {"text":"/","color":"gray"}, \
    {"score":{"name":"@s","objective":"bigstone_sandbox.temp.import_total"},"color":"yellow"}, \
    {"text":" (","color":"gray"}, \
    {"score":{"name":"@s","objective":"bigstone_sandbox.temp.import_percent"},"color":"aqua"}, \
    {"text":"%)","color":"gray"} \
]

# loop again
data remove storage bigstone_sandbox:data temp.import_list[-1]
execute if data storage bigstone_sandbox:data temp.import_list[] run function bigstone_sandbox:menu/dialog_action/import/public/process_step