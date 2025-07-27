data remove storage bigstone_sandbox:components temp

function bigstone_sandbox:dialog/component_info/body_init

execute store result storage bigstone_sandbox:components temp.selected_index int 1 run scoreboard players get @s bigstone_sandbox.selected_index
function bigstone_sandbox:dialog/component_info/get_item_data with storage bigstone_sandbox:components temp

data modify storage bigstone_sandbox:components temp.body[0].contents[11].text set from storage bigstone_sandbox:components temp.item.components."minecraft:item_name".text
data modify storage bigstone_sandbox:components temp.body[0].contents[13].text set from storage bigstone_sandbox:components temp.item.components."minecraft:lore"[1].with[0]
data modify storage bigstone_sandbox:components temp.body[1].item set from storage bigstone_sandbox:components temp.item
data modify storage bigstone_sandbox:components temp.body[1].description.text set from storage bigstone_sandbox:components temp.item.components."minecraft:lore"[0].text


function bigstone_sandbox:dialog/component_info/run_dialog with storage bigstone_sandbox:components temp

#data remove storage bigstone_sandbox:components temp