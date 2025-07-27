execute store result score #run_setup bigstone_sandbox run data get storage bigstone_sandbox:data is_setup
execute if score #run_setup bigstone_sandbox matches 1 run return fail
scoreboard players set #component_ID_count_0 bigstone_sandbox 0
scoreboard players set #component_ID_count_1 bigstone_sandbox 0
forceload add 29999984 29999984 29999999 29999999