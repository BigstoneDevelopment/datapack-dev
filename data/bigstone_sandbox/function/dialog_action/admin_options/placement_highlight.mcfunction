scoreboard players set bool bigstone_sandbox.temp 0
execute store result score bool bigstone_sandbox.temp run data get storage bigstone_sandbox:components options.placement_highlight 1 

execute if score bool bigstone_sandbox.temp matches 1 run data modify storage bigstone_sandbox:components options.placement_highlight set value false
execute if score bool bigstone_sandbox.temp matches 0 run data modify storage bigstone_sandbox:components options.placement_highlight set value true

scoreboard players reset bool bigstone_sandbox.temp

function bigstone_sandbox:dialog/admin_options