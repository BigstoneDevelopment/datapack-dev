#create a counterfeit
clone ~ ~ ~ ~15 ~15 ~15 29999984 288 29999984 strict
$setblock 29999999 305 29999999 structure_block[mode=save]{\
    name:"bigstone_sandbox:component-$(ID_1)-$(ID_0)",\
    posX:-15,\
    posY:-17,\
    posZ:-15,\
    sizeX:16,\
    sizeY:16,\
    sizeZ:16,\
    rotation:"NONE",\
    mirror:"NONE",\
    mode:"SAVE",\
    ignoreEntities:0b,\
    integrity:1.0f,\
    showboundingbox:0b,\
    strict:1b\
} replace
#make a getaway
setblock 29999999 306 29999999 minecraft:redstone_block replace
#stash the data
function #item_structures:save
#remove the evidence
fill 29999999 305 29999999 29999999 306 29999999 air strict
fill 29999999 288 29999999 29999984 303 29999984 air strict