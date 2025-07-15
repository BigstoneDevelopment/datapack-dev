execute as @a[scores={bigstone_sandbox.dialog_action=-1}] run function bigstone_sandbox:dialog_action/close_menu
execute as @a[scores={bigstone_sandbox.dialog_action=-2}] run function bigstone_sandbox:dialog_action/delete
execute as @a[scores={bigstone_sandbox.dialog_action=-3}] run function bigstone_sandbox:dialog_action/edit
execute as @a[scores={bigstone_sandbox.dialog_action=-4}] run function bigstone_sandbox:dialog_action/export
execute as @a[scores={bigstone_sandbox.dialog_action=-5}] run function bigstone_sandbox:dialog_action/filter
execute as @a[scores={bigstone_sandbox.dialog_action=-6}] run function bigstone_sandbox:dialog_action/give
execute as @a[scores={bigstone_sandbox.dialog_action=-7}] run function bigstone_sandbox:dialog_action/import
execute as @a[scores={bigstone_sandbox.dialog_action=-8}] run function bigstone_sandbox:dialog_action/back
execute as @a[scores={bigstone_sandbox.dialog_action=-9}] run function bigstone_sandbox:dialog_action/search

execute as @a[scores={bigstone_sandbox.dialog_action=1..}] run function bigstone_sandbox:dialog_action/select_item

execute as @a[scores={bigstone_menu=1..}] run function bigstone_sandbox:dialog_action/open_menu