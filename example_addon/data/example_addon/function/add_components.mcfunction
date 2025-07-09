# Straight Wire
data modify storage bigstone_sandbox:components args.structure_name set value "greenstone_straight_wire"
data modify storage bigstone_sandbox:components args.display_name set value "Straight Greenstone Wire"
data modify storage bigstone_sandbox:components args.author set value "CheemsJosh"
data modify storage bigstone_sandbox:components args.description set value "Works as a non-compatible wire for Bigstone that transfers data."
data modify storage bigstone_sandbox:components args.inputs_and_outputs set value '[{text:"Front: ",italic:true,color:"dark_gray"},{text:"OBIN, IBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}], [{text:"Back: ",italic:true,color:"dark_gray"},{text:"IBIN, OBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}]'
data modify storage bigstone_sandbox:components args.item_model set value "minecraft:slime_block"
function bigstone_sandbox:util/import_component with storage bigstone_sandbox:components args

# Corner Wire
data modify storage bigstone_sandbox:components args.structure_name set value "greenstone_corner_wire"
data modify storage bigstone_sandbox:components args.display_name set value "Corner Greenstone Wire"
data modify storage bigstone_sandbox:components args.author set value "CheemsJosh"
data modify storage bigstone_sandbox:components args.description set value "Works as a non-compatible wire for Bigstone that transfers data with a turn."
data modify storage bigstone_sandbox:components args.inputs_and_outputs set value '[{text:"Front: ",italic:true,color:"dark_gray"},{text:"OBIN, IBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}], [{text:"Left: ",italic:true,color:"dark_gray"},{text:"IBIN, OBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}]'
data modify storage bigstone_sandbox:components args.item_model set value "minecraft:dark_prismarine_stairs"
function bigstone_sandbox:util/import_component with storage bigstone_sandbox:components args

# Vertical Wire
data modify storage bigstone_sandbox:components args.structure_name set value "greenstone_vertical_wire"
data modify storage bigstone_sandbox:components args.display_name set value "Vertical Green Wire"
data modify storage bigstone_sandbox:components args.author set value "CheemsJosh"
data modify storage bigstone_sandbox:components args.description set value "Works as a non-compatible wire for Bigstone that transfers data vertically."
data modify storage bigstone_sandbox:components args.inputs_and_outputs set value '[{text:"Front: ",italic:true,color:"dark_gray"},{text:"OBIN, IBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}], [{text:"Back: ",italic:true,color:"dark_gray"},{text:"IBIN, OBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}]'
data modify storage bigstone_sandbox:components args.item_model set value "minecraft:green_candle"
function bigstone_sandbox:util/import_component with storage bigstone_sandbox:components args

# 2-Way Carrier
data modify storage bigstone_sandbox:components args.structure_name set value "greenstone_2waycarrier"
data modify storage bigstone_sandbox:components args.display_name set value "Greenstone 2 Way Carrier"
data modify storage bigstone_sandbox:components args.author set value "CheemsJosh"
data modify storage bigstone_sandbox:components args.description set value "Works as a non-compatible wire for Bigstone that can input and output data from 2 locations."
data modify storage bigstone_sandbox:components args.inputs_and_outputs set value '[{text:"Front: ",italic:true,color:"dark_gray"},{text:"IBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}], [{text:"Back: ",italic:true,color:"dark_gray"},{text:"IBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}], [{text:"Right: ",italic:true,color:"dark_gray"},{text:"OBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}], [{text:"Left: ",italic:true,color:"dark_gray"},{text:"OBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}]'
data modify storage bigstone_sandbox:components args.item_model set value "minecraft:waxed_weathered_copper_bulb"
function bigstone_sandbox:util/import_component with storage bigstone_sandbox:components args

# 2-Way Corner
data modify storage bigstone_sandbox:components args.structure_name set value "greenstone_2waycarrier_corner"
data modify storage bigstone_sandbox:components args.display_name set value "Greenstone 2 Way Corner Carrier"
data modify storage bigstone_sandbox:components args.author set value "CheemsJosh"
data modify storage bigstone_sandbox:components args.description set value "Works as a non-compatible wire for Bigstone that can input and output from 2 locations with a corner."
data modify storage bigstone_sandbox:components args.inputs_and_outputs set value '[{text:"Front: ",italic:true,color:"dark_gray"},{text:"IBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}], [{text:"Back: ",italic:true,color:"dark_gray"},{text:"OBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}], [{text:"Right: ",italic:true,color:"dark_gray"},{text:"OBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}], [{text:"Left: ",italic:true,color:"dark_gray"},{text:"IBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}]'
data modify storage bigstone_sandbox:components args.item_model set value "minecraft:waxed_weathered_cut_copper_stairs"
function bigstone_sandbox:util/import_component with storage bigstone_sandbox:components args

# 3-Way Carrier
data modify storage bigstone_sandbox:components args.structure_name set value "greenstone_3waycarrier"
data modify storage bigstone_sandbox:components args.display_name set value "Greenstone 3 Way Carrier"
data modify storage bigstone_sandbox:components args.author set value "CheemsJosh"
data modify storage bigstone_sandbox:components args.description set value "Works as a non-compatible wire for Bigstone that can input data from 1 location and output data from 3 locations."
data modify storage bigstone_sandbox:components args.inputs_and_outputs set value '[{text:"Front: ",italic:true,color:"dark_gray"},{text:"IBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}], [{text:"Back: ",italic:true,color:"dark_gray"},{text:"OBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}], [{text:"Right: ",italic:true,color:"dark_gray"},{text:"OBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}], [{text:"Left: ",italic:true,color:"dark_gray"},{text:"OBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}]'
data modify storage bigstone_sandbox:components args.item_model set value "minecraft:waxed_weathered_cut_copper_slab"
function bigstone_sandbox:util/import_component with storage bigstone_sandbox:components args

# 1-Way Carrier
data modify storage bigstone_sandbox:components args.structure_name set value "greenstone_1waycarrier"
data modify storage bigstone_sandbox:components args.display_name set value "Greenstone 1 Way Carrier"
data modify storage bigstone_sandbox:components args.author set value "CheemsJosh"
data modify storage bigstone_sandbox:components args.description set value "Works as a non-compatible wire for Bigstone that can input data from 3 locations and output data from 1 location."
data modify storage bigstone_sandbox:components args.inputs_and_outputs set value '[{text:"Front: ",italic:true,color:"dark_gray"},{text:"OBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}], [{text:"Back: ",italic:true,color:"dark_gray"},{text:"IBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}], [{text:"Right: ",italic:true,color:"dark_gray"},{text:"IBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}], [{text:"Left: ",italic:true,color:"dark_gray"},{text:"IBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}]'
data modify storage bigstone_sandbox:components args.item_model set value "minecraft:green_dye"
function bigstone_sandbox:util/import_component with storage bigstone_sandbox:components args

# Converter
data modify storage bigstone_sandbox:components args.structure_name set value "greenstone_converter"
data modify storage bigstone_sandbox:components args.display_name set value "Greenstone Converter"
data modify storage bigstone_sandbox:components args.author set value "CheemsJosh"
data modify storage bigstone_sandbox:components args.description set value "Works as a way to convert Bigstone to Greenstone and Greenstone to Bigstone."
data modify storage bigstone_sandbox:components args.inputs_and_outputs set value '[{text:"Front: ",italic:true,color:"dark_gray"},{text:"IBIN, OBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}], [{text:"Back: ",italic:true,color:"dark_gray"},{text:"IBIN, OBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}]'
data modify storage bigstone_sandbox:components args.item_model set value "minecraft:sniffer_egg"
function bigstone_sandbox:util/import_component with storage bigstone_sandbox:components args

# Overlapper
data modify storage bigstone_sandbox:components args.structure_name set value "greenstone_overlapper"
data modify storage bigstone_sandbox:components args.display_name set value "Greenstone Overlapper"
data modify storage bigstone_sandbox:components args.author set value "CheemsJosh"
data modify storage bigstone_sandbox:components args.description set value "Lets you overlap 2 Greenstone wires"
data modify storage bigstone_sandbox:components args.inputs_and_outputs set value '[{text:"Front: ",italic:true,color:"dark_gray"},{text:"OBIN, IBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}], [{text:"Back: ",italic:true,color:"dark_gray"},{text:"IBIN, OBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}], [{text:"Right: ",italic:true,color:"dark_gray"},{text:"OBIN, IBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}], [{text:"Left: ",italic:true,color:"dark_gray"},{text:"IBIN, OBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}]'
data modify storage bigstone_sandbox:components args.item_model set value "minecraft:green_glazed_terracotta"
function bigstone_sandbox:util/import_component with storage bigstone_sandbox:components args

# Greenstone and Bigstone Overlapper
data modify storage bigstone_sandbox:components args.structure_name set value "greenstone_and_bigstone_overlapper"
data modify storage bigstone_sandbox:components args.display_name set value "Greenstone And Bigstone Overlapper"
data modify storage bigstone_sandbox:components args.author set value "CheemsJosh"
data modify storage bigstone_sandbox:components args.description set value "Lets you overlap a Greenstone and Bigstone wire"
data modify storage bigstone_sandbox:components args.inputs_and_outputs set value '[{text:"Front: ",italic:true,color:"dark_gray"},{text:"OBIN, IBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}], [{text:"Back: ",italic:true,color:"dark_gray"},{text:"IBIN, OBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}], [{text:"Right: ",italic:true,color:"dark_gray"},{text:"IBIN, OBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}], [{text:"Left: ",italic:true,color:"dark_gray"},{text:"OBIN, IBIN",italic:true,color:"blue"},{text:", ",italic:true,color:"dark_gray"},{text:"BIN",italic:true,color:"green"}]'
data modify storage bigstone_sandbox:components args.item_model set value "minecraft:lime_glazed_terracotta"
function bigstone_sandbox:util/import_component with storage bigstone_sandbox:components args

