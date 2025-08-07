# need to do this later. this will be an array of items.
# below is an old example. the properties will need to be changed

## Straight Wire
#data modify storage bigstone_sandbox:data args.structure_name set value "greenstone_straight_wire"
#data modify storage bigstone_sandbox:data args.display_name set value "Straight Greenstone Wire"
#data modify storage bigstone_sandbox:data args.author set value "CheemsJosh"
#data modify storage bigstone_sandbox:data args.description set value "Works as a non-compatible wire for Bigstone that transfers data."
#data modify storage bigstone_sandbox:data args.inputs_and_outputs set value '[{text:"Front: ",italic:true,color:"dark_gray"},{text:"OBIN, IBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}], [{text:"Back: ",italic:true,color:"dark_gray"},{text:"IBIN, OBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}]'
#data modify storage bigstone_sandbox:data args.item_model set value "minecraft:slime_block"
#function bigstone_sandbox:util/import_component with storage bigstone_sandbox:data args

# this is what the addon would run however now it will be in an array

# so they add an item like this and then run a function to take all the inputed items and import them