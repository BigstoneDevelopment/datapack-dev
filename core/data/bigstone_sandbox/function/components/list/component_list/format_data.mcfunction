function bigstone_sandbox:components/list/component_list/data_init

data modify storage bigstone_sandbox:data temp.component.source.component_name set from storage bigstone_sandbox:data import.component_name
data modify storage bigstone_sandbox:data temp.component.source.creator set from storage bigstone_sandbox:data import.creator
data modify storage bigstone_sandbox:data temp.component.source.orientation set from storage bigstone_sandbox:data import.orientation
data modify storage bigstone_sandbox:data temp.component.source.description set from storage bigstone_sandbox:data import.description
data modify storage bigstone_sandbox:data temp.component.source.ports.north append from storage bigstone_sandbox:data import.ports.north[]
data modify storage bigstone_sandbox:data temp.component.source.ports.south append from storage bigstone_sandbox:data import.ports.south[]
data modify storage bigstone_sandbox:data temp.component.source.ports.east append from storage bigstone_sandbox:data import.ports.east[]
data modify storage bigstone_sandbox:data temp.component.source.ports.west append from storage bigstone_sandbox:data import.ports.west[]
data modify storage bigstone_sandbox:data temp.component.source.ports.top append from storage bigstone_sandbox:data import.ports.top[]
data modify storage bigstone_sandbox:data temp.component.source.ports.bottom append from storage bigstone_sandbox:data import.ports.bottom[]
data modify storage bigstone_sandbox:data temp.component.source.tags append from storage bigstone_sandbox:data import.tags[]
data modify storage bigstone_sandbox:data temp.component.source.UUID append from storage bigstone_sandbox:data import.UUID[]

data modify storage bigstone_sandbox:data temp.component.item.components."minecraft:custom_data".bigstone_sandbox.source merge from storage bigstone_sandbox:data temp.component.source

execute if entity @s[type=player] run data modify storage bigstone_sandbox:data temp.component.data.managers set value [{}]
execute if entity @s[type=player] run data modify storage bigstone_sandbox:data temp.component.data.managers[0].UUID set from entity @s UUID 

data modify storage bigstone_sandbox:data temp.component.item.components."minecraft:item_name".text set from storage bigstone_sandbox:data temp.component.source.component_name
data modify storage bigstone_sandbox:data temp.component.item.components."minecraft:lore"[0].text set from storage bigstone_sandbox:data temp.component.source.description
data modify storage bigstone_sandbox:data temp.component.item.components."minecraft:lore"[1].with[0] set from storage bigstone_sandbox:data temp.component.source.creator

# remove unused port directions
execute unless data storage bigstone_sandbox:data temp.component.source.ports.north[] run data remove storage bigstone_sandbox:data temp.component.item.components."minecraft:lore"[{"translate": "bigstone_sandbox.dialog_menu.port_north"}]
execute unless data storage bigstone_sandbox:data temp.component.source.ports.south[] run data remove storage bigstone_sandbox:data temp.component.item.components."minecraft:lore"[{"translate": "bigstone_sandbox.dialog_menu.port_south"}]
execute unless data storage bigstone_sandbox:data temp.component.source.ports.east[] run data remove storage bigstone_sandbox:data temp.component.item.components."minecraft:lore"[{"translate": "bigstone_sandbox.dialog_menu.port_east"}]
execute unless data storage bigstone_sandbox:data temp.component.source.ports.west[] run data remove storage bigstone_sandbox:data temp.component.item.components."minecraft:lore"[{"translate": "bigstone_sandbox.dialog_menu.port_west"}]
execute unless data storage bigstone_sandbox:data temp.component.source.ports.top[] run data remove storage bigstone_sandbox:data temp.component.item.components."minecraft:lore"[{"translate": "bigstone_sandbox.dialog_menu.port_top"}]
execute unless data storage bigstone_sandbox:data temp.component.source.ports.bottom[] run data remove storage bigstone_sandbox:data temp.component.item.components."minecraft:lore"[{"translate": "bigstone_sandbox.dialog_menu.port_bottom"}]

# add ports


# make filters list
data modify storage bigstone_sandbox:data temp.strings set value []

data modify storage bigstone_sandbox:data temp.strings append from storage bigstone_sandbox:data temp.component.source.tags[]
execute summon marker run function bigstone_sandbox:components/list/filters_list/remove_duplicates
function bigstone_sandbox:components/list/component_list/tags_loop

data modify storage bigstone_sandbox:data temp.strings append from storage bigstone_sandbox:data temp.component.source.ports.north[]
data modify storage bigstone_sandbox:data temp.strings append from storage bigstone_sandbox:data temp.component.source.ports.south[]
data modify storage bigstone_sandbox:data temp.strings append from storage bigstone_sandbox:data temp.component.source.ports.east[]
data modify storage bigstone_sandbox:data temp.strings append from storage bigstone_sandbox:data temp.component.source.ports.west[]
data modify storage bigstone_sandbox:data temp.strings append from storage bigstone_sandbox:data temp.component.source.ports.top[]
data modify storage bigstone_sandbox:data temp.strings append from storage bigstone_sandbox:data temp.component.source.ports.bottom[]
execute summon marker run function bigstone_sandbox:components/list/filters_list/remove_duplicates
function bigstone_sandbox:components/list/component_list/ports_loop

data modify storage bigstone_sandbox:data temp.strings append from storage bigstone_sandbox:data temp.component.source.creator
function bigstone_sandbox:components/list/component_list/creators_loop

function bigstone_sandbox:components/list/filters_list/filters_override
data remove storage bigstone_sandbox:data temp.filters[].color

data modify storage bigstone_sandbox:data temp.component.data.filters set from storage bigstone_sandbox:data temp.filters