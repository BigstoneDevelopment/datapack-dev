# kill item
execute if entity @e[ \
            type=item, \
            nbt={ \
                Item:{ \
                    components:{ \
                        "minecraft:custom_data":{ \
                            bigstone_sandbox_input:1b \
                        } \
                    } \
                } \
            } \
        ] run function bs.input:zprivate/stop_containers/kill_item
        
execute store success score @s bigstone_sandbox.has_book run clear @s minecraft:writable_book[minecraft:custom_data={bigstone_sandbox_input:1b}] 0
execute if entity @s[scores={bigstone_sandbox.has_book=0,bigstone_sandbox.has_book.old=1}] at @s anchored eyes positioned ^ ^ ^ run function bs.input:zprivate/stop_containers/ray
execute at @s anchored eyes positioned ^ ^ ^ run function bs.input:zprivate/stop_containers/no_item_frames
execute at @s anchored eyes positioned ^ ^ ^ run function bs.input:zprivate/stop_containers/no_glow_item_frames
execute if items entity @s[scores={bigstone_sandbox.has_book=0,bigstone_sandbox.has_book.old=1}] enderchest.* minecraft:writable_book[minecraft:custom_data={bigstone_sandbox_input:1b}] run function bs.input:zprivate/stop_containers/no_enderchest
scoreboard players operation @s bigstone_sandbox.has_book.old = @s bigstone_sandbox.has_book

execute as @e[type=item] if items entity @s contents minecraft:writable_book[minecraft:custom_data={bigstone_sandbox_input:1b}] at @s run function bs.input:zprivate/stop_containers/no_hopper