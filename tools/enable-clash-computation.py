#!/usr/bin/env python3
"""Use the proved sorted-color validator only in monolithic optimizer proofs."""
from pathlib import Path
count = 0
for path in Path("InitE/WordStages").glob("*.lean"):
    if not (path.stem.startswith("Optimize") or (path.stem.startswith("Pass") and path.stem.endswith("_9"))):
        continue
    text = path.read_text()
    if "  conv => lhs; cbv\n" not in text:
        continue
    if "import InitE.ClashComputation\n" not in text:
        text = "import InitE.ClashComputation\n" + text
    text = text.replace("open scoped InitE.CompilerComputation\n", "open scoped InitE.CompilerComputation InitE.ClashComputation\n")
    path.write_text(text)
    count += 1
print(f"Enabled certified sorted checker in {count} monolithic proofs")
