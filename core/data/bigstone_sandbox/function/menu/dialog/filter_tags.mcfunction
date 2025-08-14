tag @s add bigstone_sandbox.last_filter_menu.tag

data remove storage bigstone_sandbox:data temp
scoreboard players reset * bigstone_sandbox.temp
function xolibs:api/playerdata/load

function bigstone_sandbox:menu/dialog/filter/body_init_tags
function bigstone_sandbox:menu/dialog/filter/init_buttons_draft

data get storage xolibs:playerdata storage.bigstone_sandbox.list.filters
data modify storage bigstone_sandbox:data temp.filters.available set from storage xolibs:playerdata storage.bigstone_sandbox.list.filters
data modify storage bigstone_sandbox:data temp.filters.add append from storage bigstone_sandbox:data temp.filters.available[{"type":"tag"}]
function bigstone_sandbox:menu/dialog/filter/add_filters_loop
data remove storage bigstone_sandbox:data temp.buttons.list[-1][-1]

data modify storage bigstone_sandbox:data temp.body.contents[{"translate": "bigstone_sandbox.dialog_menu.available_filters"}].extra append from storage bigstone_sandbox:data temp.buttons.list 

function bigstone_sandbox:menu/dialog/filter/run_dialog with storage bigstone_sandbox:data temp
data remove storage bigstone_sandbox:data temp
scoreboard players reset * bigstone_sandbox.temp