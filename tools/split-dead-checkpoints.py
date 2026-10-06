#!/usr/bin/env python3
"""Split dead-code certificates into data, conditional proofs, and composition.

Every conditional theorem takes its children's exact conclusions as arguments;
the final composition supplies the already proved children. No premise remains
on the root certificate. These are proof proposals checked by Lean's kernel.
"""
import argparse
import re
from pathlib import Path

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument("label", type=int)
args = parser.parse_args()
label = args.label
root = Path(__file__).resolve().parents[1]
source = root / f"InitE/DeadStages{label}"
aggregate = (root / f"InitE/DeadStages{label}.lean").read_text()
last = max(int(x) for x in re.findall(rf"import InitE\.DeadStages{label}\.Chunk(\d+)", aggregate))
chunks = [source / f"Chunk{i:03}.lean" for i in range(last + 1)]
pattern = re.compile(r"theorem node(\d+)_eq : (.*?) := by\n(.*?)(?=\n\n|\n#print|\nend)", re.S)
types = {}
for chunk in chunks:
    for match in pattern.finditer(chunk.read_text()):
        types[match[1]] = match[2]

namespace = f"InitE.DeadStages{label}.Parallel"
base = source / "Parallel"
for folder in ("Data", "Conditional", "Compose"):
    (base / folder).mkdir(parents=True, exist_ok=True)

options = """set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
"""
for index, chunk in enumerate(chunks):
    original = chunk.read_text()
    nodes = list(pattern.finditer(original))
    body = original.split(f"namespace InitE.DeadStages{label}\n", 1)[1]
    body = body.rsplit(f"end InitE.DeadStages{label}", 1)[0]
    body = pattern.sub("", body)
    body = re.sub(r"^#print axioms node\d+_eq.*$", "", body, flags=re.M)
    imports = "import InitE.DeadBranchComputation\nimport InitE.ComputationCache\n"
    if index:
        imports += f"import {namespace}.Data.Chunk{index - 1:03}\n"
    (base / "Data" / f"Chunk{index:03}.lean").write_text(
        imports + options + f"namespace {namespace}\n" + body + f"end {namespace}\n"
    )

    conditional = [f"import {namespace}.Data.Chunk{index:03}", options, f"namespace {namespace}"]
    composed = [f"import {namespace}.Conditional.Chunk{index:03}"]
    if index:
        composed.append(f"import {namespace}.Compose.Chunk{index - 1:03}")
    composed += [options, f"namespace {namespace}"]
    for node in nodes:
        number, conclusion, proof = node[1], node[2], node[3]
        children = list(dict.fromkeys(re.findall(r"\bnode(\d+)_eq\b", proof)))
        if any(int(child) >= int(number) for child in children):
            raise ValueError(f"Forward reference in node {number}")
        binders = "".join(f"\n    (child{child} : {types[child]})" for child in children)
        proof = re.sub(r"\bnode(\d+)_eq\b", lambda m: "child" + m[1], proof)
        conditional += [f"theorem node{number}_cond_eq{binders} : {conclusion} := by", proof, ""]
        arguments = "".join(f" node{child}_eq" for child in children)
        composed += [f"theorem node{number}_eq : {conclusion} :=",
                     f"  node{number}_cond_eq{arguments}", ""]
    conditional += [f"#print axioms node{nodes[-1][1]}_cond_eq", f"end {namespace}"]
    composed += [f"#print axioms node{nodes[-1][1]}_eq", f"end {namespace}"]
    (base / "Conditional" / f"Chunk{index:03}.lean").write_text("\n".join(conditional) + "\n")
    (base / "Compose" / f"Chunk{index:03}.lean").write_text("\n".join(composed) + "\n")
(root / f"InitE/DeadStages{label}/Parallel.lean").write_text(
    f"import {namespace}.Compose.Chunk{last:03}\n\n"
    f"#print axioms {namespace}.node{max(types, key=int)}_eq\n"
)
print(f"Proposed {len(types)} nodes in {len(chunks)} parallel proof groups")
