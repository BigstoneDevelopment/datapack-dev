# new progress bar: calculate number of x rows in build, increment at end of x-row
scoreboard players operation max bigstone_sandbox.vect_x = system bigstone_sandbox.vect_y
execute store result bossbar bigstone_sandbox.progress max run scoreboard players operation max bigstone_sandbox.vect_x *= system bigstone_sandbox.vect_z
execute store result bossbar bigstone_sandbox.progress value run scoreboard players set value bigstone_sandbox.vect_x 0

bossbar set bigstone_sandbox.progress name {text:"Load Progress (gets faster over time)",color:"green"}
bossbar set bigstone_sandbox.progress visible true
bossbar set bigstone_sandbox.progress players @a