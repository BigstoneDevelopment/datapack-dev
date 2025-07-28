# Storage set setup state

data merge storage bigstone_sandbox:data {is_setup: 1b}

# Set default settings
data merge storage bigstone:settings {\
    instantSnap:1b,\
    highlightColour:{\
        paste:{\
            colour1: 626778336,\
            colour2: 622329855,\
            colour3: 621853627,\
            colour4: 630390783\
        },\
        select:{\
            colour1: 627040347,\
            colour2: 627826023,\
            colour3: 626045773,\
            colour4: 630781844\
        }\
    }\
}