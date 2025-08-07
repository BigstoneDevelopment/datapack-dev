execute \
    unless entity @s[gamemode=creative] \
        run return fail
execute \
    unless data storage bigstone_sandbox:data {temp:{effects:["creative_self_delete_component"]}} \
        run return fail
execute \
    if score #weapon_slot_id bigstone_sandbox.temp matches 1 \
        run return \
            run item modify entity @s weapon.mainhand {"function":"minecraft:set_count","count": -1,"add": true}
execute \
    if score #weapon_slot_id bigstone_sandbox.temp matches 2 \
        run item modify entity @s weapon.offhand {"function":"minecraft:set_count","count": -1,"add": true}