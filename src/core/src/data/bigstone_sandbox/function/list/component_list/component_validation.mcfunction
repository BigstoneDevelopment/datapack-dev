
execute unless data storage bigstone_sandbox:data import.component_name run return fail
execute unless data storage bigstone_sandbox:data import.creator run return fail
#execute unless data storage bigstone_sandbox:data import.orientation run return fail
execute unless data storage bigstone_sandbox:data import.description run return fail
execute unless data storage bigstone_sandbox:data import.UUID[3] run return fail
execute if data storage bigstone_sandbox:data import.UUID[4] run return fail

return 1