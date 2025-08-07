import os

base = 11637360

# Get the directory the script is in
script_dir = os.path.dirname(os.path.abspath(__file__))

def generate_file():
    filename = "reset_entities.mcfunction"
    output_path = os.path.join(script_dir, filename)

    with open(output_path, "w") as f:
        for a in range(16):
            for b in range(16):
                for c in range(16):

                    hex_uuid = f"{base:x}-0-{a:x}-0-{b:x}{f'{c:x}'.zfill(8)}"
                    line = (
                        f'kill {hex_uuid}\n'
                    )
                    f.write(line)

generate_file()

print("del spawn_marker_array complete")