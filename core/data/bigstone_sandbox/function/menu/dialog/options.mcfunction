data remove storage bigstone_sandbox:data temp

function bigstone_sandbox:menu/dialog/options/body_init

execute if entity @s[tag=bigstone_sandbox.default_to_components] run data modify storage bigstone_sandbox:data temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.options.open_components_menu_by_default"}].with[0].translate set value bigstone_sandbox.dialog_menu.toggle.on
execute if entity @s[tag=bigstone_sandbox.info_on_join] run data modify storage bigstone_sandbox:data temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.options.open_info_dialog_on_join"}].with[0].translate set value bigstone_sandbox.dialog_menu.toggle.on
execute if entity @s[tag=bigstone_sandbox.sound_effects] run data modify storage bigstone_sandbox:data temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.options.have_dialog_sound_effects"}].with[0].translate set value bigstone_sandbox.dialog_menu.toggle.on
execute if entity @s[tag=bigstone_sandbox.music] run data modify storage bigstone_sandbox:data temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.options.enable_dialog_music"}].with[0].translate set value bigstone_sandbox.dialog_menu.toggle.on
execute if entity @s[tag=bigstone_sandbox.placement_highlight] run data modify storage bigstone_sandbox:data temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.options.placement_highlight_box"}].with[0].translate set value bigstone_sandbox.dialog_menu.toggle.on
execute if entity @s[tag=bigstone_sandbox.sprint_and_sneak_keybind] run data modify storage bigstone_sandbox:data temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.options.sprint_and_sneak"}].with[0].translate set value bigstone_sandbox.dialog_menu.toggle.on
execute if entity @s[tag=bigstone_sandbox.double_sprint_keybind] run data modify storage bigstone_sandbox:data temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.options.double_sprint"}].with[0].translate set value bigstone_sandbox.dialog_menu.toggle.on
execute if entity @s[tag=bigstone_sandbox.double_sneak_keybind] run data modify storage bigstone_sandbox:data temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.options.double_sneak"}].with[0].translate set value bigstone_sandbox.dialog_menu.toggle.on
execute if entity @s[tag=bigstone_sandbox.block_shape_highlight] run data modify storage bigstone_sandbox:data temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.options.block_shape_highlight"}].with[0].translate set value bigstone_sandbox.dialog_menu.toggle.on

function bigstone_sandbox:main/version/data
function bigstone_sandbox:main/version/game
data modify storage bigstone_sandbox:data temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.version_info"}].with[0] set from storage bigstone_sandbox:data temp.version.game
data modify storage bigstone_sandbox:data temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.version_info"}].with[1] set from storage bigstone_sandbox:data temp.version.data

execute if entity @s[tag=bigstone_sandbox.admin] run data modify storage bigstone_sandbox:data temp.body[0].contents[{"hover_event":{"value":{"translate":"bigstone_sandbox.dialog_menu.admin_options"}}}].click_event.command set value "trigger bigstone_sandbox_menu set -14"
execute if entity @s[tag=bigstone_sandbox.admin] run data modify storage bigstone_sandbox:data temp.body[0].contents[{"hover_event":{"value":{"translate":"bigstone_sandbox.dialog_menu.admin_options"}}}].hover_event.value.color set value "green"
execute if entity @s[tag=bigstone_sandbox.admin] run data modify storage bigstone_sandbox:data temp.body[0].contents[{"translate": "bigstone_sandbox.dialog_menu.button.admin_check"}].translate set value "bigstone_sandbox.dialog_menu.button.admin_mode"

function bigstone_sandbox:menu/dialog/options/run_dialog with storage bigstone_sandbox:data temp

data remove storage bigstone_sandbox:data temp