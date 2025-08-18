import os

base = 11637360

# Get the directory the script is in
script_dir = os.path.dirname(os.path.abspath(__file__))

def rotate_coords_around_center(a, c, angle):
    """Rotate around (8, 8) center in the XZ plane."""
    # Translate to origin
    x = a - 8
    z = c - 8

    if angle == 0:
        rx, rz = x, z
    elif angle == 90:
        rx, rz = -z, x
    elif angle == 180:
        rx, rz = -x, -z
    elif angle == 270:
        rx, rz = z, -x
    else:
        raise ValueError("Angle must be 0, 90, 180, or 270")

    # Translate back to (8, 8)
    final_x = rx + 8
    final_z = rz + 8

    return final_x, final_z

def generate_file(angle):
    suffix = f"{angle:03}"
    filename = f"{suffix}.mcfunction"
    output_path = os.path.join(script_dir, filename)

    with open(output_path, "w") as f:
        for a in range(16):
            for b in range(16):
                for c in range(16):
                    x, z = rotate_coords_around_center(a + 0.5, c + 0.5 , angle)

                    # Add 0.5 to center the marker
                    y = b + 0.5

                    hex_uuid = f"{base:x}-0-{a:x}-0-{b:x}{f'{c:x}'.zfill(8)}"
                    line = (
                        f'summon marker ~{x} ~{y} ~{z} '
                        f'{{Tags:["bigstone_scan",{hex_uuid}]}}\n'
                    )
                    f.write(line)

for angle in [0, 90, 180, 270]:
    generate_file(angle)

print("spawn_marker_array complete")
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