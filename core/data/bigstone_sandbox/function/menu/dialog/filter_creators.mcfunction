tag @s add bigstone_sandbox.last_filter_menu.creator

data remove storage bigstone_sandbox:data temp
scoreboard players reset * bigstone_sandbox.temp
function xolibs:api/playerdata/load

function bigstone_sandbox:menu/dialog/filter/body_init_creators
function bigstone_sandbox:menu/dialog/filter/init_buttons_draft

data modify storage bigstone_sandbox:data temp.filters.add append from storage xolibs:playerdata storage.bigstone_sandbox.list.filters[{"include":true}]
function bigstone_sandbox:menu/dialog/filter/add_filters_loop
data modify storage bigstone_sandbox:data temp.body.contents[{"translate": "bigstone_sandbox.dialog_menu.included_filters"}].extra append from storage bigstone_sandbox:data temp.buttons.list[]
data remove storage bigstone_sandbox:data temp.buttons.list

data modify storage bigstone_sandbox:data temp.filters.add append from storage xolibs:playerdata storage.bigstone_sandbox.list.filters[{"exclude":true}]
function bigstone_sandbox:menu/dialog/filter/add_filters_loop
data modify storage bigstone_sandbox:data temp.body.contents[{"translate": "bigstone_sandbox.dialog_menu.excluded_filters"}].extra append from storage bigstone_sandbox:data temp.buttons.list[]
data remove storage bigstone_sandbox:data temp.buttons.list

data modify storage bigstone_sandbox:data temp.filters.add append from storage xolibs:playerdata storage.bigstone_sandbox.list.filters[{"type":"creator"}]
execute if data storage bigstone_sandbox:data temp.filters.add[{"include":true}] run data modify storage bigstone_sandbox:data temp.filters.add[{"include":true}] merge value {"hide":true}
execute if data storage bigstone_sandbox:data temp.filters.add[{"exclude":true}] run data modify storage bigstone_sandbox:data temp.filters.add[{"exclude":true}] merge value {"hide":true}
function bigstone_sandbox:menu/dialog/filter/add_filters_loop
data remove storage bigstone_sandbox:data temp.buttons.list[-1][-1]
data modify storage bigstone_sandbox:data temp.body.contents[{"translate": "bigstone_sandbox.dialog_menu.available_filters"}].extra append from storage bigstone_sandbox:data temp.buttons.list[]

function bigstone_sandbox:menu/dialog/filter/run_dialog with storage bigstone_sandbox:data temp
data remove storage bigstone_sandbox:data temp
scoreboard players reset * bigstone_sandbox.temp