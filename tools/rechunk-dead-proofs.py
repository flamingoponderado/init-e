#!/usr/bin/env python3
"""Rebatch generated opaque certificates without recomputing any proposals."""
from pathlib import Path
import argparse
import re
p = argparse.ArgumentParser()
p.add_argument("label", type=int)
p.add_argument("nodes_per_chunk", type=int)
a = p.parse_args()
if a.nodes_per_chunk < 1:
    p.error("nodes_per_chunk must be positive")
root = Path(__file__).resolve().parent.parent
base = root / f"InitE/DeadStages{a.label}"
files = sorted(base.glob("Chunk*.lean"))
namespace = f"namespace InitE.DeadStages{a.label}\n"
first = files[0].read_text()
header = first[first.index("import InitE.ComputationCache"):first.index(namespace)+len(namespace)]
bodies = []
for path in files:
    s = path.read_text()
    bodies.append(s[s.index(namespace)+len(namespace):s.rindex("#print axioms")])
body = "".join(bodies)
starts = list(re.finditer(r"^@\[irreducible, cbv_opaque\] def input(\d+)\b", body, re.M))
indices = [int(m.group(1)) for m in starts]
assert indices == list(range(len(indices))), "input certificates must be consecutive"
cuts = [0] + [starts[i].start() for i in range(a.nodes_per_chunk, len(starts), a.nodes_per_chunk)] + [len(body)]
for n, (lo, hi) in enumerate(zip(cuts, cuts[1:])):
    imp = "import InitE.CompilerComputation\n" if n == 0 else f"import InitE.DeadStages{a.label}.Chunk{n-1:03d}\n"
    endnode = min((n+1)*a.nodes_per_chunk, len(starts))-1
    (base / f"Chunk{n:03d}.lean").write_text(imp + header + body[lo:hi] +
        f"#print axioms node{endnode}_eq\nend InitE.DeadStages{a.label}\n")
count = len(cuts)-1
for old in files[count:]:
    old.unlink()
(root / f"InitE/DeadStages{a.label}.lean").write_text(
    f"import InitE.DeadStages{a.label}.Chunk{count-1:03d}\n\n#print axioms InitE.DeadStages{a.label}.node{len(starts)-1}_eq\n")
print(f"Rebatched {len(starts)} opaque certificates into {count} modules")
