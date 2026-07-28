from pathlib import Path

# -----------------------------
# Project Paths
# -----------------------------
project = Path(__file__).resolve().parent.parent
src = project / "src"
release = project / "release"

release.mkdir(exist_ok=True)

output = release / "ChathuLightingSuite.lua"

# -----------------------------
# Build Order
# -----------------------------
order = [
    "Config.lua",
    "Logger.lua",
    "Scanner.lua",
    "GroupBuilder.lua",
    "Main.lua"
]

print("=" * 40)
print("Building Chathu Lighting Suite PRO")
print("=" * 40)

with open(output, "w", encoding="utf-8") as out:

    out.write("-- Auto Generated File\n")
    out.write("-- DO NOT EDIT\n\n")

    for name in order:

        file = src / name

        if not file.exists():
            print("Missing:", name)
            continue

        print("Adding", name)

        out.write("\n")
        out.write("--====================\n")
        out.write("-- " + name + "\n")
        out.write("--====================\n\n")

        text = file.read_text(encoding="utf-8")

        lines = []

        for line in text.splitlines():

            s = line.strip()

            # Remove require()
            if "require(" in s:
                continue

            # Remove module return statements
            if s == "return Config":
                continue

            if s == "return Logger":
                continue

            if s == "return Scanner":
                continue

            if s == "return GroupBuilder":
                continue

            lines.append(line)

        out.write("\n".join(lines))
        out.write("\n\n")

print()
print("=" * 40)
print("Build Finished!")
print("=" * 40)
print(output)
