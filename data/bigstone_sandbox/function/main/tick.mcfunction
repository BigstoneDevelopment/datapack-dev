execute as @a[scores={bigstone_sandbox.join=1..}] run function bigstone_sandbox:main/on_join
execute as @a[predicate=bigstone_sandbox:triggered_bigstone_sandbox_menu] at @s run function bigstone_sandbox:main/trigger 
scoreboard players reset @a bigstone_sandbox_menu
scoreboard players enable @a bigstone_sandbox_menu

execute as @a[scores={bigstone_sandbox.sprint_cooldown=1..}] run scoreboard players remove @s bigstone_sandbox.sprint_cooldown 1
execute as @a[scores={bigstone_sandbox.sneak_cooldown=1..}] run scoreboard players remove @s bigstone_sandbox.sneak_cooldown 1