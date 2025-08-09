scoreboard players set bool bigstone_sandbox.temp 0
execute if entity @s[tag=bigstone_sandbox.placement_highlight] run scoreboard players set bool bigstone_sandbox.temp 1

execute if score bool bigstone_sandbox.temp matches 1 run tag @s remove bigstone_sandbox.placement_highlight
execute if score bool bigstone_sandbox.temp matches 0 run tag @s add bigstone_sandbox.placement_highlight

#update advancements
execute if score bool bigstone_sandbox.temp matches 1 run advancement grant @s only bigstone_sandbox:item_detect/hold
execute if score bool bigstone_sandbox.temp matches 0 run advancement revoke @s only bigstone_sandbox:item_detect/hold

execute if score bool bigstone_sandbox.temp matches 1 run function bigstone_sandbox:events/input/post_hold/item

scoreboard players reset bool bigstone_sandbox.temp

function bigstone_sandbox:menu/dialog/options