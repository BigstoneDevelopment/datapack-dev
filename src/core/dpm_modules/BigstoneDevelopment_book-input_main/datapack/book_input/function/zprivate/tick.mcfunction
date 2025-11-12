execute as @a[tag=bigstone_sandbox.input,predicate=bs.input:book_written] run return run function book_input:zprivate/get_data/signed

execute as @a[tag=bigstone_sandbox.input] run title @s actionbar {text:"Write in the book and click 'Done'", color:'red'}
execute as @a[tag=bigstone_sandbox.input] run function book_input:zprivate/stop_containers/player_tick
execute as @a[tag=bigstone_sandbox.input,predicate=bs.input:book_unwritten] run function book_input:zprivate/fix

execute as @a[tag=bigstone_sandbox.input,predicate=bs.input:book_has_content] run function book_input:zprivate/get_data/writtable
