
summon block_display ~ ~ ~ {Glowing:1b,block_state:{Name:"minecraft:diamond_block"}}

execute positioned ~29999992 ~-8 ~29999992 positioned ~108086391056891904 ~108086391056891904 ~108086391056891904 positioned ~-108086391056891904 ~-108086391056891904 ~-108086391056891904 positioned ~-30000000 ~ ~-30000000 \
  unless predicate bigstone_sandbox:chunk_is_empty run return run function bigstone_sandbox:raycast/end

execute unless entity @s[distance=..1000] run return fail

execute if score distance.x bigstone_sandbox.raycast <= distance.y bigstone_sandbox.raycast if score distance.x bigstone_sandbox.raycast <= distance.z bigstone_sandbox.raycast run return run function bigstone_sandbox:raycast/transversal/step_x with storage bigstone_sandbox:components raycast.delta
execute if score distance.y bigstone_sandbox.raycast <= distance.x bigstone_sandbox.raycast if score distance.y bigstone_sandbox.raycast <= distance.z bigstone_sandbox.raycast run return run function bigstone_sandbox:raycast/transversal/step_y with storage bigstone_sandbox:components raycast.delta
execute if score distance.z bigstone_sandbox.raycast <= distance.x bigstone_sandbox.raycast if score distance.z bigstone_sandbox.raycast <= distance.y bigstone_sandbox.raycast run return run function bigstone_sandbox:raycast/transversal/step_z with storage bigstone_sandbox:components raycast.delta