import os

SRC_DIR = "src"
OUTPUT_FILE = "dist/Main.lua"

order = [
    "Config.lua",
    "Logger.lua",
    "Command.lua",
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

    "MacroBuilder.lua",
    "ExecutorBuilder.lua",
    "SequenceBuilder.lua",
    "PageBuilder.lua",
    "LayoutBuilder.lua",

    "UI.lua",
    "ShowBuilder.lua",
    "Main.lua"
]

module_returns = {
    "Config.lua",
    "Logger.lua",
    "Command.lua",
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

    "MacroBuilder.lua",
    "ExecutorBuilder.lua",
    "SequenceBuilder.lua",
    "PageBuilder.lua",
    "LayoutBuilder.lua",

    "UI.lua",
    "ShowBuilder.lua",
}

os.makedirs("dist", exist_ok=True)

with open(OUTPUT_FILE, "w", encoding="utf-8") as out:

    out.write("-- ======================================\n")
    out.write("-- Chathu Lighting Suite PRO\n")
    out.write("-- Auto Generated Build\n")
    out.write("-- ======================================\n\n")

    for filename in order:

        filepath = os.path.join(SRC_DIR, filename)

        if not os.path.exists(filepath):
            print(f"⚠ Missing: {filename}")
            continue

        out.write("\n")
        out.write("-- ======================================\n")
        out.write(f"-- {filename}\n")
        out.write("-- ======================================\n\n")

        with open(filepath, "r", encoding="utf-8") as f:

            for line in f:

                stripped = line.strip()

                if stripped.startswith("require"):
                    continue

                if filename in module_returns and stripped.startswith("return "):
                    continue

                out.write(line)

print(f"\n✅ Build Complete: {OUTPUT_FILE}")
