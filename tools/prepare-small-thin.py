#!/usr/bin/env python3
"""Prepare isolated standard-axiom optimizer proofs with explicit minimal imports."""
import argparse
from pathlib import Path

p = argparse.ArgumentParser(description=__doc__)
p.add_argument("labels", nargs="+", type=int)
a = p.parse_args()
root = Path(__file__).resolve().parents[1]
for label in a.labels:
    source = root / f"InitE/WordStages/Optimize{label}.lean"
    text = source.read_text()
    text = "\n".join(line for line in text.splitlines()
        if not line.startswith("import InitE.WordStages.Optimize")) + "\n"
    text = text.replace("InitE.CompilerComputation", "InitE.SmallOptimizerComputation")
    if "set_option autoImplicit false" not in text:
        text = text.replace("set_option Elab.async false",
            "set_option autoImplicit false\nset_option Elab.async false", 1)
    if "InitE.ClashComputation" not in next(line for line in text.splitlines()
            if line.startswith("open scoped")):
        text = text.replace("open scoped InitE.SmallOptimizerComputation",
            "open scoped InitE.SmallOptimizerComputation InitE.ClashComputation", 1)
    assert text.count("namespace InitE.WordStages\n") == 1
    assert text.count("end InitE.WordStages\n") == 1
    namespace = f"InitE.SmallStages.Thin{label}"
    text = text.replace("namespace InitE.WordStages\n",
        f"open InitE.WordStages\nnamespace {namespace}\n")
    text = text.replace("end InitE.WordStages\n", f"end {namespace}\n")
    output = root / f"InitE/SmallStages/Thin{label}.lean"
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(text)
    print(output.relative_to(root))
