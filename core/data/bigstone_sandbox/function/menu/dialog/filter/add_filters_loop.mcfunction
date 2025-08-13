#bigstone_sandbox:data temp.filters.add

execute unless data storage bigstone_sandbox:data temp.filters.add[] run return run function bigstone_sandbox:menu/dialog/filter/finalize_buttons_draft
data modify storage bigstone_sandbox:data temp.filters.entry set from storage bigstone_sandbox:data temp.filters.add[0]

execute if data storage bigstone_sandbox:data temp.filters.entry{"type":"tag"} run function bigstone_sandbox:menu/dialog/filter/init_tag_button
execute if data storage bigstone_sandbox:data temp.filters.entry{"type":"port"} run function bigstone_sandbox:menu/dialog/filter/init_port_button
execute if data storage bigstone_sandbox:data temp.filters.entry{"type":"creator"} run function bigstone_sandbox:menu/dialog/filter/init_creator_button

data modify storage bigstone_sandbox:data temp.buttons.entry.extra[1].color set from storage bigstone_sandbox:data temp.filters.entry.color
data modify storage bigstone_sandbox:data temp.buttons.entry.hover_event.value.text set from storage bigstone_sandbox:data temp.filters.entry.value

data modify storage bigstone_sandbox:data temp.buttons.draft[0] append from storage bigstone_sandbox:data temp.buttons.entry

execute if data storage bigstone_sandbox:data temp.buttons.draft[0][11] run function bigstone_sandbox:menu/dialog/filter/finalize_buttons_draft

data remove storage bigstone_sandbox:data temp.filters.add[0]
data remove storage bigstone_sandbox:data temp.filters.entry
function bigstone_sandbox:menu/dialog/filter/add_filters_loop