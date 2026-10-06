#!/usr/bin/env python3
"""Check supplied Word literals against individual exact Loop compiler outputs."""
from pathlib import Path
root = Path(__file__).resolve().parent.parent
base = root / "InitE/FrontendStages/Word"
base.mkdir(exist_ok=True)
header = """set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
"""
for i in range(826):
    label = 64+i
    source = root / f"InitE/WordStages/Source{label}.lean"
    assert source.exists()
    text = source.read_text()
    if i >= 16:
        lane = f"import InitE.WordStages.Source{label-16}\n"
        if lane not in text:
            source.write_text(lane+text)
    imports = f"import InitE.CompactComputation\nimport InitE.FrontendStages.Loop.Data{i}\nimport InitE.WordStages.Source{label}\nimport InitE.WordFrontendComputation\n"
    if i >= 16:
        imports += f"import InitE.FrontendStages.Word.Translate{i-16}\n"
    special = base / f"Translate{i}.lean"
    if special.exists() and f"import InitE.FrontendStages.Word.Checkpoints{i}\n" in special.read_text():
        text = special.read_text()
        if i >= 16:
            lane = f"import InitE.FrontendStages.Word.Translate{i-16}\n"
            if lane not in text:
                special.write_text(lane + text)
        continue
    (base / f"Translate{i}.lean").write_text(imports + header +
        f"theorem translate{i}_eq : InitE.WordFrontendComputation.compileEntry Loop.output{i} =\n" +
        f"    InitE.WordStages.source{label} := by\n" +
        "  kernel_rfl\n" +
        f"#print axioms translate{i}_eq\nend InitE.FrontendStages.Word\n")
imports = "import InitE.WordFrontendComputation\n" + "".join(
    f"import InitE.FrontendStages.Word.Translate{i}\n" for i in range(810,826))
proof = "True.intro"
for i in reversed(range(826)):
    proof = f"⟨congrArg some translate{i}_eq, {proof}⟩"
(base / "FunctionsFacts.lean").write_text(imports + header +
    "def inputs : List (Nat × List Nat × Flapjack.HolLoopProg 64) := [" +
    ",\n  ".join(f"Loop.output{i}" for i in range(826)) + "]\n" +
    "def outputs : List (Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64)) := [" +
    ",\n  ".join(f"InitE.WordStages.source{i+64}" for i in range(826)) + "]\n" +
    "theorem compileFunctions_eq : inputs.map InitE.WordFrontendComputation.compileEntry = outputs := by\n" +
    "  apply InitE.LoopComputation.map_eq_checked\n" +
    "  simp only [inputs, outputs, InitE.CrepComputation.checkedOutputs]\n" +
    "  exact " + proof + "\n#print axioms compileFunctions_eq\nend InitE.FrontendStages.Word\n")
print("Composed 826 Loop-to-Word certificates in sixteen dependency lanes")
