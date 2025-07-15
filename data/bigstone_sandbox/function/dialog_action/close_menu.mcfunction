trigger bigstone_sandbox.dialog_action set 0
scoreboard players reset @s bigstone_sandbox.dialog_action
dialog clear @s
playsound minecraft:block.bamboo.break ui @s ~ ~ ~ 2 1
say close menu