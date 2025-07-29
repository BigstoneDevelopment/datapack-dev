execute unless data storage bigstone_sandbox:components temp.component.data.ports.east[0] run return fail

data remove storage bigstone_sandbox:components temp.ports

data modify storage bigstone_sandbox:components temp.ports.text set from storage bigstone_sandbox:components temp.component.data.ports.east[0]
data remove storage bigstone_sandbox:components temp.component.data.ports.east[0]
execute if data storage bigstone_sandbox:components temp.component.data.ports.east[0] run data modify storage bigstone_sandbox:components temp.ports merge value \
{ \
  "extra": [ \
    { \
      "translate": "bigstone_sandbox.dialog_menu.port_delimiter" \
    } \
  ] \
}

data modify storage bigstone_sandbox:components temp.body[2].contents[{"translate": "bigstone_sandbox.dialog_menu.port_east"}].with[0].extra append from storage bigstone_sandbox:components temp.ports

function bigstone_sandbox:dialog/component_info/east_ports_loop