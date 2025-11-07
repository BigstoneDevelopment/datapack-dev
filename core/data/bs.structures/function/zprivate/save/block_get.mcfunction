## Bookshelf
# skip if matching previous block (compression shortcut)
execute if function bs.structures:zprivate/save/block_match_prev run return 0

# get string form of block
function bs.structures:zprivate/save/block_string

# string -> int
function bs.structures:zprivate/save/block_index with storage bs:out block

return 1