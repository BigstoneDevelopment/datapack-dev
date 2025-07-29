data remove storage bigstone_sandbox:components raycast
scoreboard players reset * bigstone_sandbox.raycast

execute summon marker run function bigstone_sandbox:raycast/transversal/get_vectors

execute positioned ~29999992 ~-8 ~29999992 positioned ~108086391056891904 ~108086391056891904 ~108086391056891904 positioned ~-108086391056891904 ~-108086391056891904 ~-108086391056891904 positioned ~-30000000 ~ ~-30000000 \
 run function bigstone_sandbox:raycast/transversal/loop