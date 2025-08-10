scoreboard players reset @s bigstone_sandbox.join

scoreboard players set @s bigstone_sandbox.loaded_index 0
scoreboard players set @s bigstone_sandbox.selected_index 0
tag @s remove bigstone_sandbox.admin

function bigstone_sandbox:components/list/make_private_filtered_list
function bigstone_sandbox:components/list/make_filters_list

execute if entity @s[tag=bigstone_sandbox.info_on_join] run tellraw @s ["",{"text":"\n\n\n"},{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"yellow",click_event:{"action":"open_url","url":"https://github.com/bigstonedevelopment/datapack"}},{"text":"\n"},{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.description","fallback":"A simple Bigstone Sandbox","color":"gray"},{"text":"\n"},{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.author","fallback":"@Bigstone Development - ","italic":true,"color":"gray"},{"translate":"bigstone_sandbox.tellraw_message.click_for_github","fallback":"Click for github","italic":true,"color":"yellow","click_event":{"action":"open_url","url":"https://github.com/bigstonedevelopment"}},{"text":"\n\n"},{"text":"[","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.title","fallback":"Bigstone Sandbox","color":"gold"},{"text":"] ","color":"dark_gray"},{"translate":"bigstone_sandbox.tellraw_message.open_menu","fallback":"","color":"gray"},{"translate":"bigstone_sandbox.tellraw_message.keybind","fallback":"","color":"yellow","with":[{"keybind":"key.sprint"},{"keybind":"key.sneak"}]},{"translate":"bigstone_sandbox.dialog_menu.empty","fallback":"Please use our ","color":"gray"},{"translate":"bigstone_sandbox.dialog_menu.empty","fallback":"Resource Pack","color":"yellow","click_event": {"action": "open_url","url": "https://github.com/bigstonedevelopment"}},{"text":"\n\n "}]

execute if predicate bigstone_sandbox:item_detect/in_hotbar run advancement grant @s only bigstone_sandbox:item_detect/inactive_in_hotbar
execute if predicate bigstone_sandbox:item_detect/in_hotbar run advancement revoke @s only bigstone_sandbox:item_detect/active_in_hotbar

execute unless predicate bigstone_sandbox:item_detect/in_hotbar run advancement revoke @s only bigstone_sandbox:item_detect/inactive_in_hotbar
execute unless predicate bigstone_sandbox:item_detect/in_hotbar run advancement grant @s only bigstone_sandbox:item_detect/active_in_hotbar

execute if predicate bigstone_sandbox:item_detect/offhand/is_item run advancement grant @s only bigstone_sandbox:item_detect/inactive_in_offhand
execute if predicate bigstone_sandbox:item_detect/offhand/is_item run advancement revoke @s only bigstone_sandbox:item_detect/active_in_offhand

execute unless predicate bigstone_sandbox:item_detect/offhand/is_item run advancement revoke @s only bigstone_sandbox:item_detect/inactive_in_offhand
execute unless predicate bigstone_sandbox:item_detect/offhand/is_item run advancement grant @s only bigstone_sandbox:item_detect/active_in_offhand