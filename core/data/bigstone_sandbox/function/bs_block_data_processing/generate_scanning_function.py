import os

base = 11637360

# Get the directory the script is in
script_dir = os.path.dirname(os.path.abspath(__file__))
output_path = os.path.join(script_dir, "spawn_marker_array.mcfunction")

with open(output_path, "w") as f:
    for a in range(16):
        for b in range(16):
            for c in range(16):
                line = f'summon marker ~{a+0.5} ~{b+0.5} ~{c+0.5} {{UUID:[I;{base},{a},{b},{c}],Tags:["bs_scan"]}}\n'
                f.write(line)
    f.close
print("spawn_marker_array Complete")
"""
#make data collection doc
output_path = os.path.join(script_dir, "collect_marker_data.mcfunction")
with open(output_path, "w") as f:
    for a in range(16):
        for b in range(16):
            for c in range(16):
                line = f'summon marker ~{a} ~{b} ~{c} {{UUID:[I;{base},{a},{b},{c}],Tags:["bs_scan"]}}\n'
                f.write(line)
    f.close
print("collect_marker_data Complete")
#"""