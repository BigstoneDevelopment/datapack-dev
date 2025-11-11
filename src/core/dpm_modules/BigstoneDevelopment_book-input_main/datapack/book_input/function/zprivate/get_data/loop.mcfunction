data modify storage bigstone_sandbox:playerdata storage.bigstone_sandbox_input.out append from storage bigstone_sandbox:playerdata storage.bigstone_sandbox_input.temp[-1].raw
data remove storage bigstone_sandbox:playerdata storage.bigstone_sandbox_input.temp[-1]

execute if data storage bigstone_sandbox:playerdata storage.bigstone_sandbox_input.temp[] run return run function book_input:zprivate/get_data/loop