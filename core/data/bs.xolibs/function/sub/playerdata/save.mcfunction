# saves the currently loaded data to the specified UUID's permanant storage

$data remove storage bigstone_sandbox:playerdata rom.$(UUID0)_$(UUID1)_$(UUID2)_$(UUID3)
$data modify storage bigstone_sandbox:playerdata rom.$(UUID0)_$(UUID1)_$(UUID2)_$(UUID3) set from storage bigstone_sandbox:playerdata storage