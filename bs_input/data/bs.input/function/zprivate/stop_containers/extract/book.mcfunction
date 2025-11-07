data remove storage bigstone_sandbox:input book[-1]
execute unless data storage bigstone_sandbox:input book[-1].components run data modify storage bigstone_sandbox:input book[-1].components set value {}
function bs.input:zprivate/stop_containers/extract/book with storage bigstone_sandbox:input book[-1]
$item replace block ~ ~ ~ container.$(Slot) with air
$summon item ~ ~ ~ {Item:{id:"minecraft:writable_book",count:$(count),components:{"minecraft:custom_name":"","minecraft:custom_data":{bigstone_sandbox_input:1b}}}}