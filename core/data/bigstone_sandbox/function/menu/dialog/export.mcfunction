function xolibs:api/playerdata/load

data remove storage bigstone_sandbox:data temp.body
data remove storage bigstone_sandbox:data temp.selected_index
#data remove storage bigstone_sandbox:data temp.component_info_index
data remove storage bigstone_sandbox:data temp.source_data
data remove storage bigstone_sandbox:data temp.escaped_source_data
scoreboard players reset selected_index bigstone_sandbox.temp

# add 1000 to the selected index to get its info page for the trigger command for back button
execute store result storage bigstone_sandbox:data temp.selected_index int 1 run scoreboard players get @s bigstone_sandbox.selected_index
#execute store result score selected_index bigstone_sandbox.temp run scoreboard players get @s bigstone_sandbox.selected_index
#scoreboard players add selected_index bigstone_sandbox.temp 1000
#execute store result storage bigstone_sandbox:data temp.component_info_index int 1 run scoreboard players get selected_index bigstone_sandbox.temp

function bigstone_sandbox:menu/dialog/export/get_source_data with storage bigstone_sandbox:data temp

function bigstone_sandbox:menu/dialog/export/body_init

function bigstone_sandbox:menu/dialog/export/escape_source_data with storage bigstone_sandbox:data temp
data modify storage bigstone_sandbox:data temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.copy_prompt"}].click_event.value set from storage bigstone_sandbox:data temp.escaped_source_data

function bigstone_sandbox:menu/dialog/export/run_dialog with storage bigstone_sandbox:data temp

data remove storage bigstone_sandbox:data temp.body
data remove storage bigstone_sandbox:data temp.selected_index
#data remove storage bigstone_sandbox:data temp.component_info_index
data remove storage bigstone_sandbox:data temp.source_data
data remove storage bigstone_sandbox:data temp.escaped_source_data
scoreboard players reset selected_index bigstone_sandbox.temp