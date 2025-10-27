# given block string, returns block id, adding it to index if new
$execute unless data storage bigstone_sandbox:structures anti_index[{block:"$(block)"}] run return run function item_structures:zprivate/save/new_block with storage bs:out block
$data modify storage bigstone_sandbox:structures save.stack set from storage bigstone_sandbox:structures anti_index[{block:"$(block)"}].id