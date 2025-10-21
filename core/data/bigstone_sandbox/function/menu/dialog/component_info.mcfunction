data remove storage bigstone_sandbox:data temp.body
data remove storage bigstone_sandbox:data temp.component

function bigstone_sandbox:menu/dialog/component_info/body_init

execute store result storage bigstone_sandbox:data temp.selected_index int 1 run scoreboard players get @s bigstone_sandbox.selected_index
function bigstone_sandbox:menu/dialog/component_info/get_item_data with storage bigstone_sandbox:data temp

data modify storage bigstone_sandbox:data temp.body[0].contents[11].text set from storage bigstone_sandbox:data temp.component.source.component_name
data modify storage bigstone_sandbox:data temp.body[0].contents[13].text set from storage bigstone_sandbox:data temp.component.source.creator
data modify storage bigstone_sandbox:data temp.body[1].item set from storage bigstone_sandbox:data temp.component.item
data modify storage bigstone_sandbox:data temp.body[1].description.text set from storage bigstone_sandbox:data temp.component.source.description

execute unless data storage bigstone_sandbox:data temp.component.source.ports.north[] run data remove storage bigstone_sandbox:data temp.body[2].contents[{"translate": "bigstone_sandbox.dialog_menu.port_north"}] 
execute unless data storage bigstone_sandbox:data temp.component.source.ports.south[] run data remove storage bigstone_sandbox:data temp.body[2].contents[{"translate": "bigstone_sandbox.dialog_menu.port_south"}] 
execute unless data storage bigstone_sandbox:data temp.component.source.ports.east[] run data remove storage bigstone_sandbox:data temp.body[2].contents[{"translate": "bigstone_sandbox.dialog_menu.port_east"}] 
execute unless data storage bigstone_sandbox:data temp.component.source.ports.west[] run data remove storage bigstone_sandbox:data temp.body[2].contents[{"translate": "bigstone_sandbox.dialog_menu.port_west"}] 
execute unless data storage bigstone_sandbox:data temp.component.source.ports.top[] run data remove storage bigstone_sandbox:data temp.body[2].contents[{"translate": "bigstone_sandbox.dialog_menu.port_top"}] 
execute unless data storage bigstone_sandbox:data temp.component.source.ports.bottom[] run data remove storage bigstone_sandbox:data temp.body[2].contents[{"translate": "bigstone_sandbox.dialog_menu.port_bottom"}] 
execute unless data storage bigstone_sandbox:data temp.component.source.tags[] run data remove storage bigstone_sandbox:data temp.body[2].contents[{"translate": "bigstone_sandbox.dialog_menu.tags_list"}] 

function bigstone_sandbox:menu/dialog/component_info/north_ports_loop
function bigstone_sandbox:menu/dialog/component_info/south_ports_loop
function bigstone_sandbox:menu/dialog/component_info/east_ports_loop
function bigstone_sandbox:menu/dialog/component_info/west_ports_loop
function bigstone_sandbox:menu/dialog/component_info/top_ports_loop
function bigstone_sandbox:menu/dialog/component_info/bottom_ports_loop
function bigstone_sandbox:menu/dialog/component_info/tags_loop

function bigstone_sandbox:menu/dialog/component_info/run_dialog with storage bigstone_sandbox:data temp

data remove storage bigstone_sandbox:data temp.body
data remove storage bigstone_sandbox:data temp.component