execute unless data storage bigstone_sandbox:data temp.component.source.ports.bottom[0] run return fail

data remove storage bigstone_sandbox:data temp.ports

data modify storage bigstone_sandbox:data temp.ports.text set from storage bigstone_sandbox:data temp.component.source.ports.bottom[0]
data remove storage bigstone_sandbox:data temp.component.source.ports.bottom[0]
execute if data storage bigstone_sandbox:data temp.component.source.ports.bottom[0] run data modify storage bigstone_sandbox:data temp.ports merge value \
{ \
  "extra": [ \
    { \
      "translate": "bigstone_sandbox.dialog_menu.port_delimiter" \
    } \
  ] \
}

data modify storage bigstone_sandbox:data temp.component.item.components."minecraft:lore"[{"translate": "bigstone_sandbox.dialog_menu.port_bottom"}].with[0].extra append from storage bigstone_sandbox:data temp.ports

function bigstone_sandbox:list/component_list/bottom_ports_loop