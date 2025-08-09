execute unless data storage bigstone_sandbox:data temp.component.source.tags[0] run return fail

data remove storage bigstone_sandbox:data temp.tags

data modify storage bigstone_sandbox:data temp.tags.text set from storage bigstone_sandbox:data temp.component.source.tags[0]
data remove storage bigstone_sandbox:data temp.component.source.tags[0]
execute if data storage bigstone_sandbox:data temp.component.source.tags[0] run data modify storage bigstone_sandbox:data temp.tags merge value \
{ \
  "extra": [ \
    { \
      "translate": "bigstone_sandbox.dialog_menu.tag_delimiter" \
    } \
  ] \
}
data modify storage bigstone_sandbox:data temp.body[2].contents[{"translate": "bigstone_sandbox.dialog_menu.tags"}].with[0].extra append from storage bigstone_sandbox:data temp.tags

function bigstone_sandbox:menu/dialog/component_info/tags_loop