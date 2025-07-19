scoreboard objectives add bigstone_sandbox_menu trigger
scoreboard objectives add bigstone_sandbox.loaded_index dummy
scoreboard objectives add bigstone_sandbox.temp dummy
scoreboard objectives add bigstone_sandbox.sprint_cooldown dummy
scoreboard objectives add bigstone_sandbox.sneak_cooldown dummy

execute unless data storage bigstone_sandbox:components options.add run data modify storage bigstone_sandbox:components options.add set value true
execute unless data storage bigstone_sandbox:components options.delete run data modify storage bigstone_sandbox:components options.delete set value true
execute unless data storage bigstone_sandbox:components options.edit run data modify storage bigstone_sandbox:components options.edit set value true
execute unless data storage bigstone_sandbox:components options.private run data modify storage bigstone_sandbox:components options.private set value true
execute unless data storage bigstone_sandbox:components options.reload_message run data modify storage bigstone_sandbox:components options.reload_message set value true
execute unless data storage bigstone_sandbox:components options.import_logs run data modify storage bigstone_sandbox:components options.import_logs set value true
execute unless data storage bigstone_sandbox:components options.placement_highlight run data modify storage bigstone_sandbox:components options.placement_highlight set value true
execute unless data storage bigstone_sandbox:components options.search run data modify storage bigstone_sandbox:components options.search set value true

scoreboard objectives add bigstone_sandbox.join minecraft.custom:minecraft.leave_game