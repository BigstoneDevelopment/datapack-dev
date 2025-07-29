data remove storage bigstone_sandbox:components temp

function bigstone_sandbox:dialog/component_info/body_init

execute store result storage bigstone_sandbox:components temp.selected_index int 1 run scoreboard players get @s bigstone_sandbox.selected_index
function bigstone_sandbox:dialog/component_info/get_item_data with storage bigstone_sandbox:components temp

data modify storage bigstone_sandbox:components temp.body[0].contents[11].text set from storage bigstone_sandbox:components temp.component.data.component_name
data modify storage bigstone_sandbox:components temp.body[0].contents[13].text set from storage bigstone_sandbox:components temp.component.data.creator
data modify storage bigstone_sandbox:components temp.body[1].item set from storage bigstone_sandbox:components temp.component.item
data modify storage bigstone_sandbox:components temp.body[1].description.text set from storage bigstone_sandbox:components temp.component.data.description

execute unless data storage bigstone_sandbox:components temp.component.data.ports.north[] run data remove storage bigstone_sandbox:components temp.body[2].contents[{"translate": "bigstone_sandbox.dialog_menu.port_north"}] 
execute unless data storage bigstone_sandbox:components temp.component.data.ports.south[] run data remove storage bigstone_sandbox:components temp.body[2].contents[{"translate": "bigstone_sandbox.dialog_menu.port_south"}] 
execute unless data storage bigstone_sandbox:components temp.component.data.ports.east[] run data remove storage bigstone_sandbox:components temp.body[2].contents[{"translate": "bigstone_sandbox.dialog_menu.port_east"}] 
execute unless data storage bigstone_sandbox:components temp.component.data.ports.west[] run data remove storage bigstone_sandbox:components temp.body[2].contents[{"translate": "bigstone_sandbox.dialog_menu.port_west"}] 
execute unless data storage bigstone_sandbox:components temp.component.data.ports.top[] run data remove storage bigstone_sandbox:components temp.body[2].contents[{"translate": "bigstone_sandbox.dialog_menu.port_top"}] 
execute unless data storage bigstone_sandbox:components temp.component.data.ports.bottom[] run data remove storage bigstone_sandbox:components temp.body[2].contents[{"translate": "bigstone_sandbox.dialog_menu.port_bottom"}] 
execute unless data storage bigstone_sandbox:components temp.component.data.tags[] run data remove storage bigstone_sandbox:components temp.body[2].contents[{"translate": "bigstone_sandbox.dialog_menu.tags"}] 

function bigstone_sandbox:dialog/component_info/north_ports_loop
function bigstone_sandbox:dialog/component_info/south_ports_loop
function bigstone_sandbox:dialog/component_info/east_ports_loop
function bigstone_sandbox:dialog/component_info/west_ports_loop
function bigstone_sandbox:dialog/component_info/top_ports_loop
function bigstone_sandbox:dialog/component_info/bottom_ports_loop
function bigstone_sandbox:dialog/component_info/tags_loop

function bigstone_sandbox:dialog/component_info/run_dialog with storage bigstone_sandbox:components temp

data remove storage bigstone_sandbox:components temp