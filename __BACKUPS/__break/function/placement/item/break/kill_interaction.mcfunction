execute at @e[tag=bigstone_sandbox.attacked] \
    run kill @e[ \
        type=minecraft:interaction, \
        tag=bigstone_sandbox.component_break_detector, \
        distance=..0.01, \
        limit=2 \
    ]

tag @e[tag=bigstone_sandbox.attacked] remove bigstone_sandbox.attacked