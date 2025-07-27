function xolibs:api/playerdata/load
say loaded data
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
say item is component

execute summon item_display run function bigstone_sandbox:list/private_list/format_item
say formatted item
data modify storage bigstone_sandbox:components temp.list set from storage xolibs:playerdata storage.bigstone_sandbox.list.components
execute if data storage xolibs:playerdata storage.bigstone_sandbox.list.components[] unless function bigstone_sandbox:list/private_list/test_is_item_in_list run return fail
say item added to list
data modify storage xolibs:playerdata storage.bigstone_sandbox.list.components prepend from storage bigstone_sandbox:components temp.import

data remove storage bigstone_sandbox:components temp
scoreboard players reset bool bigstone_sandbox.temp

function bigstone_sandbox:list/make_private_filtered_list
say made filtered list