data modify entity @s Tags[] append from storage bigstone_sandbox:data temp.strings
data remove storage bigstone_sandbox:data temp.strings
data modify bigstone_sandbox:data temp.strings set from entity @s Tags
kill @s