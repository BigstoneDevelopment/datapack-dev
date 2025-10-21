data remove storage bigstone_sandbox:data temp.body

function bigstone_sandbox:menu/dialog/import/body_init

execute if entity @s[tag=bigstone_sandbox.admin] run data modify storage bigstone_sandbox:data temp.body[0].contents[{"hover_event":{"value":{"translate":"bigstone_sandbox.dialog_menu.import_from_item_data"}}}].click_event.command set value "trigger bigstone_sandbox_menu set -17"
execute if entity @s[tag=bigstone_sandbox.admin] run data modify storage bigstone_sandbox:data temp.body[0].contents[{"hover_event":{"value":{"translate":"bigstone_sandbox.dialog_menu.import_from_item_data"}}}].hover_event.value.color set value "green"
execute if entity @s[tag=bigstone_sandbox.admin] run data modify storage bigstone_sandbox:data temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.button.admin_check"}].translate set value "bigstone_sandbox.dialog_menu.button.admin_mode"

function bigstone_sandbox:menu/dialog/import/run_dialog with storage bigstone_sandbox:data temp

data remove storage bigstone_sandbox:data temp.body