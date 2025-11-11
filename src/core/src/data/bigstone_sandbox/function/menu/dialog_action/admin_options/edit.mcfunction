scoreboard players set bool bigstone_sandbox.temp 0
execute store result score bool bigstone_sandbox.temp run data get storage bigstone_sandbox:data settings.edit 1 

execute if score bool bigstone_sandbox.temp matches 1 run data modify storage bigstone_sandbox:data settings.edit set value false
execute if score bool bigstone_sandbox.temp matches 0 run data modify storage bigstone_sandbox:data settings.edit set value true

scoreboard players reset bool bigstone_sandbox.temp

function bigstone_sandbox:menu/dialog/admin_options