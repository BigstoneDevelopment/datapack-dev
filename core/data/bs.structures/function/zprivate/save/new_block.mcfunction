# add to anti-index (block -> id)
data modify storage bigstone_sandbox:structures tmp.block set from storage bs:out block.block
execute store result storage bigstone_sandbox:structures tmp.id short 1 store result storage bigstone_sandbox:structures save.stack short 1 run scoreboard players add id bigstone_sandbox.commands 1
data modify storage bigstone_sandbox:structures anti_index append from storage bigstone_sandbox:structures tmp
data remove storage bigstone_sandbox:structures tmp

# add to index (id -> block)
data modify storage bigstone_sandbox:structures save.index append from storage bs:out block.block