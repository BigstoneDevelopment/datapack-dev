data remove storage bigstone_sandbox:components temp

function bigstone_sandbox:dialog/options/body_init

execute if entity @s[tag=bigstone_sandbox.default_to_components] run data modify storage bigstone_sandbox:components temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.options.open_components_menu_by_default"}].extra[1].translate set value bigstone_sandbox.dialog_menu.toggle.on
execute if entity @s[tag=bigstone_sandbox.info_on_join] run data modify storage bigstone_sandbox:components temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.options.open_info_dialog_on_join"}].extra[1].translate set value bigstone_sandbox.dialog_menu.toggle.on
execute if entity @s[tag=bigstone_sandbox.sound_effects] run data modify storage bigstone_sandbox:components temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.options.have_dialog_sound_effects"}].extra[1].translate set value bigstone_sandbox.dialog_menu.toggle.on
execute if entity @s[tag=bigstone_sandbox.music] run data modify storage bigstone_sandbox:components temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.options.enable_dialog_music"}].extra[1].translate set value bigstone_sandbox.dialog_menu.toggle.on
execute if entity @s[tag=bigstone_sandbox.placement_highlight] run data modify storage bigstone_sandbox:components temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.options.placement_highlight_box"}].extra[1].translate set value bigstone_sandbox.dialog_menu.toggle.on

function bigstone_sandbox:dialog/options/run_dialog with storage bigstone_sandbox:components temp

#data remove storage bigstone_sandbox:components temp