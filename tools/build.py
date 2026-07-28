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
    "Utils.lua",
    "FixtureDatabase.lua",
    "Scanner.lua",
    "GroupBuilder.lua",
    "Groups.lua",
    "Fixtures.lua",
    "Position.lua",
    "Color.lua",
    "Beam.lua",
    "Effects.lua",
    "Busking.lua",
    "Presets.lua",
    "UI.lua",
    "Main.lua"
]

# -----------------------------
# Module Returns To Remove
# -----------------------------
module_returns = {
    "return Config",
    "return Logger",
    "return FixtureDatabase",
    "return Scanner",
    "return GroupBuilder",
    "return Groups",
    "return Fixtures",
    "return Position",
    "return Color",
    "return Beam",
    "return Effects",
    "return Busking",
    "return Presets",
    "return UI"
}

print("=" * 40)
print("Building Chathu Lighting Suite PRO")
print("=" * 40)

with open(output, "w", encoding="utf-8") as out:

    out.write("-- Auto Generated File\n")
    out.write("-- DO NOT EDIT\n\n")

    for name in order:

        file = src / name

        if not file.exists():
            print(f"Missing: {name}")
            continue

        print(f"Adding {name}")

        out.write("\n")
        out.write("--====================\n")
        out.write(f"-- {name}\n")
        out.write("--====================\n\n")

        text = file.read_text(encoding="utf-8")

        lines = []

        for line in text.splitlines():

            s = line.strip()

            # Remove require() statements
            if "require(" in s:
                continue

            # Remove module return statements
            if s in module_returns:
                continue

            lines.append(line)

        out.write("\n".join(lines))
        out.write("\n\n")

print()
print("=" * 40)
print("Build Finished!")
print("=" * 40)
print(output)
