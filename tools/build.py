from pathlib import Path

print("=" * 40)
print("Chathu Lighting Suite PRO Builder")
print("=" * 40)

project_root = Path(__file__).resolve().parent.parent
src_dir = project_root / "src"
release_dir = project_root / "release"

print("Project :", project_root)
print("Source  :", src_dir)
print("Release :", release_dir)

lua_files = sorted(src_dir.glob("*.lua"))

print("\nLua Files Found:")

for f in lua_files:
    print(" -", f.name)

print("\nBuild system ready.")
