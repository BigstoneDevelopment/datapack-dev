scoreboard players enable @a bigstone_menu
execute as @a[scores={bigstone_sandbox.join=1..}] run function bigstone_sandbox:main/on_join
execute as @a[predicate=bigstone_sandbox:triggered_bigstone_menu] at @s unless function bigstone_sandbox:main/trigger run scoreboard players reset @s bigstone_menu