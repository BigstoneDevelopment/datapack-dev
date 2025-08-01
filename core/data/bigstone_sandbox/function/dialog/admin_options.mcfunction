data remove storage bigstone_sandbox:data temp
scoreboard players set bool bigstone_sandbox.temp 0
execute store result score bool bigstone_sandbox.temp run gamerule sendCommandFeedback

function bigstone_sandbox:dialog/admin_options/body_init

execute if data storage bigstone_sandbox:data options{add:true} run data modify storage bigstone_sandbox:data temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.admin_options.players_can_add_public_components"}].with[0].translate set value bigstone_sandbox.dialog_menu.toggle.on
execute if data storage bigstone_sandbox:data options{delete:true} run data modify storage bigstone_sandbox:data temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.admin_options.players_can_delete_public_components"}].with[0].translate set value bigstone_sandbox.dialog_menu.toggle.on
execute if data storage bigstone_sandbox:data options{edit:true} run data modify storage bigstone_sandbox:data temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.admin_options.players_can_edit_public_components"}].with[0].translate set value bigstone_sandbox.dialog_menu.toggle.on
execute if data storage bigstone_sandbox:data options{private:true} run data modify storage bigstone_sandbox:data temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.admin_options.players_can_have_private_components"}].with[0].translate set value bigstone_sandbox.dialog_menu.toggle.on
execute if data storage bigstone_sandbox:data options{reload_message:true} run data modify storage bigstone_sandbox:data temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.admin_options.reload_message"}].with[0].translate set value bigstone_sandbox.dialog_menu.toggle.on
execute if data storage bigstone_sandbox:data options{import_logs:true} run data modify storage bigstone_sandbox:data temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.admin_options.import_logs"}].with[0].translate set value bigstone_sandbox.dialog_menu.toggle.on
execute if score bool bigstone_sandbox.temp matches 1 run data modify storage bigstone_sandbox:data temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.admin_options.command_feedback"}].with[0].translate set value bigstone_sandbox.dialog_menu.toggle.on
execute if data storage bigstone_sandbox:data options{placement_highlight:true} run data modify storage bigstone_sandbox:data temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.admin_options.global_placement_highlight_box"}].with[0].translate set value bigstone_sandbox.dialog_menu.toggle.on
execute if data storage bigstone_sandbox:data options{search:true} run data modify storage bigstone_sandbox:data temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.admin_options.allow_players_to_search"}].with[0].translate set value bigstone_sandbox.dialog_menu.toggle.on
execute if data storage bigstone_sandbox:data options{instant_snap:true} run data modify storage bigstone_sandbox:data temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.admin_options.instant_snap"}].with[0].translate set value bigstone_sandbox.dialog_menu.toggle.on

function bigstone_sandbox:dialog/admin_options/run_dialog with storage bigstone_sandbox:data temp

data remove storage bigstone_sandbox:data temp
scoreboard players reset bool bigstone_sandbox.temp