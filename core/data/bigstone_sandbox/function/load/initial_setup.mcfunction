execute store result score #run_setup bigstone_sandbox run data get storage bigstone_sandbox settings.is_setup
execute if score #run_setup bigstone_sandbox matches 1 run return fail
scoreboard players set #component_ID_count bigstone_sandbox 0