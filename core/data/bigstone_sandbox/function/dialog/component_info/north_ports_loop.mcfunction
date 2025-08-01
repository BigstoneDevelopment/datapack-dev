execute unless data storage bigstone_sandbox:data temp.component.source.ports.north[0] run return fail

data remove storage bigstone_sandbox:data temp.ports

data modify storage bigstone_sandbox:data temp.ports.text set from storage bigstone_sandbox:data temp.component.source.ports.north[0]
data remove storage bigstone_sandbox:data temp.component.source.ports.north[0]
execute if data storage bigstone_sandbox:data temp.component.source.ports.north[0] run data modify storage bigstone_sandbox:data temp.ports merge value \
{ \
  "extra": [ \
    { \
      "translate": "bigstone_sandbox.dialog_menu.port_delimiter" \
    } \
  ] \
}

data modify storage bigstone_sandbox:data temp.body[2].contents[{"translate": "bigstone_sandbox.dialog_menu.port_north"}].with[0].extra append from storage bigstone_sandbox:data temp.ports

function bigstone_sandbox:dialog/component_info/north_ports_loop