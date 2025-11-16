execute unless data storage bigstone_sandbox:data temp.component.source.ports.south[0] run return fail

data remove storage bigstone_sandbox:data temp.ports

data modify storage bigstone_sandbox:data temp.ports.text set from storage bigstone_sandbox:data temp.component.source.ports.south[0]
data remove storage bigstone_sandbox:data temp.component.source.ports.south[0]
execute if data storage bigstone_sandbox:data temp.component.source.ports.south[0] run data modify storage bigstone_sandbox:data temp.ports merge value \
{ \
  "extra": [ \
    { \
      "translate": "bigstone_sandbox.dialog_menu.port_delimiter", \
      "fallback": ", " \
    } \
  ] \
}

data modify storage bigstone_sandbox:data temp.body[2].contents[{"translate": "bigstone_sandbox.dialog_menu.port_south"}].with[0].extra append from storage bigstone_sandbox:data temp.ports

function bigstone_sandbox:menu/dialog/component_info/south_ports_loop