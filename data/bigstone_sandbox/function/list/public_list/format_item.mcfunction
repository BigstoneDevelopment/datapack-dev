data modify entity @s item set from storage bigstone_sandbox:components import

item modify entity @s contents bigstone_sandbox:format_item

data modify storage bigstone_sandbox:components temp.import.id set from entity @s item.id
data modify storage bigstone_sandbox:components temp.import.components set from entity @s item.components

kill @s