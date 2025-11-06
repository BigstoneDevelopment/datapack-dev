# initialize scoreboards
scoreboard objectives add bigstone_sandbox.vect_x dummy [{text:"BS ",color:"gold"},{text:"Vect_x",color:"gray"}]
scoreboard objectives add bigstone_sandbox.vect_y dummy [{text:"BS ",color:"gold"},{text:"Vect_y",color:"gray"}]
scoreboard objectives add bigstone_sandbox.vect_z dummy [{text:"BS ",color:"gold"},{text:"Vect_z",color:"gray"}]

scoreboard objectives add bigstone_sandbox.constant dummy [{text:"BS ",color:"gold"},{text:"Constant",color:"gray"}]
scoreboard objectives add bigstone_sandbox.commands dummy [{text:"BS ",color:"gold"},{text:"Commands",color:"gray"}]
scoreboard players set limit bigstone_sandbox.commands 200000

# initialize bossbar
bossbar add bigstone_sandbox.progress {"text":"Progress","color":"green"}

# set constant values
scoreboard players set #32768 bigstone_sandbox.constant 32768
scoreboard players set #1000 bigstone_sandbox.constant 1000
scoreboard players set #100 bigstone_sandbox.constant 100
scoreboard players set #50 bigstone_sandbox.constant 50
scoreboard players set #4 bigstone_sandbox.constant 4
scoreboard players set #-1 bigstone_sandbox.constant -1