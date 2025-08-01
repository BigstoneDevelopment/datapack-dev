function bigstone_sandbox:list/component_list/data_init

data modify storage bigstone_sandbox:data temp.component.item.components."minecraft:custom_data".bigstone_sandbox.source merge from storage bigstone_sandbox:data import
data modify storage bigstone_sandbox:data temp.component.source merge from storage bigstone_sandbox:data import
execute if entity @s[type=player] run data modify storage bigstone_sandbox:data temp.component.data.owner set from entity @s UUID

data modify storage bigstone_sandbox:data temp.component.item.components."minecraft:item_name".text set from storage bigstone_sandbox:data import.component_name
data modify storage bigstone_sandbox:data temp.component.item.components."minecraft:lore"[0].text set from storage bigstone_sandbox:data import.description
data modify storage bigstone_sandbox:data temp.component.item.components."minecraft:lore"[1].with[0] set from storage bigstone_sandbox:data import.creator

execute unless data storage bigstone_sandbox:data import.ports.north[] run data remove storage bigstone_sandbox:data temp.component.item.components."minecraft:lore"[{"translate": "bigstone_sandbox.dialog_menu.port_north"}]
execute unless data storage bigstone_sandbox:data import.ports.south[] run data remove storage bigstone_sandbox:data temp.component.item.components."minecraft:lore"[{"translate": "bigstone_sandbox.dialog_menu.port_south"}]
execute unless data storage bigstone_sandbox:data import.ports.east[] run data remove storage bigstone_sandbox:data temp.component.item.components."minecraft:lore"[{"translate": "bigstone_sandbox.dialog_menu.port_east"}]
execute unless data storage bigstone_sandbox:data import.ports.west[] run data remove storage bigstone_sandbox:data temp.component.item.components."minecraft:lore"[{"translate": "bigstone_sandbox.dialog_menu.port_west"}]
execute unless data storage bigstone_sandbox:data import.ports.up[] run data remove storage bigstone_sandbox:data temp.component.item.components."minecraft:lore"[{"translate": "bigstone_sandbox.dialog_menu.port_up"}]
execute unless data storage bigstone_sandbox:data import.ports.down[] run data remove storage bigstone_sandbox:data temp.component.item.components."minecraft:lore"[{"translate": "bigstone_sandbox.dialog_menu.port_down"}]