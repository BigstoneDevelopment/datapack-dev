execute as @a[scores={bigstone_sandbox.join=1..}] run function bigstone_sandbox:main/on_join
execute as @a[predicate=bigstone_sandbox:triggered_bigstone_menu] at @s run function bigstone_sandbox:main/trigger 
scoreboard players reset @a bigstone_menu
scoreboard players enable @a bigstone_menu