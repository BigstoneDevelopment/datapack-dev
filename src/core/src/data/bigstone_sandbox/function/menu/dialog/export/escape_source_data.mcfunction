$summon text_display ~ ~ ~ {text:'$(source_data)',Tags:["bigstone_sandbox.escaped_text"]}
data modify storage bigstone_sandbox:data temp.escaped_source_data set from entity @e[type=text_display,tag=bigstone_sandbox.escaped_text,limit=1,distance=..1] text
kill @e[type=text_display,tag=bigstone_sandbox.escaped_text,limit=1,distance=..1]

#$data modify storage bigstone_sandbox:data temp.escaped_source_data set value '$(source_data)'