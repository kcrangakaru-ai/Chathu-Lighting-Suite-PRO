from pathlib import Path

project = Path(__file__).resolve().parent.parent
src = project / "src"
release = project / "release"

output = release / "ChathuLightingSuite.lua"

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

        if file.exists():

            print("Adding", name)

            out.write("\n")
            out.write("--====================\n")
            out.write("-- " + name + "\n")
            out.write("--====================\n\n")

            out.write(file.read_text(encoding="utf-8"))
            out.write("\n\n")

        else:

            print("Missing:", name)

print("\nBuild Finished!")
print(output)
