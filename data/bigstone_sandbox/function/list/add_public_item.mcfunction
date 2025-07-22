data remove storage bigstone_sandbox:components temp
scoreboard players reset bool bigstone_sandbox.temp

execute unless data storage bigstone_sandbox:components \
  import{ \
    "components":{ \
      "minecraft:custom_data":{ \
        "bigstone_sandbox":{} \
      } \
    } \
  } \
  run return fail

execute summon item_display run function bigstone_sandbox:list/public_list/format_item

data modify storage bigstone_sandbox:components temp.list set from storage bigstone_sandbox:components list.items
execute if data storage bigstone_sandbox:components list.items[] unless function bigstone_sandbox:list/public_list/test_is_item_in_list run return fail

data modify storage bigstone_sandbox:components list.items append from storage bigstone_sandbox:components temp.import

data remove storage bigstone_sandbox:components temp
scoreboard players reset bool bigstone_sandbox.temp

execute as @a run function bigstone_sandbox:list/make_private_filtered_list