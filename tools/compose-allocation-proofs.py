#!/usr/bin/env python3
"""Compose allocation from individually checked, closed oracle equations."""
from pathlib import Path
import sys
label = int(sys.argv[1])
root = Path(f"InitE/ClashStages{label}")
input_namespace = f"InitE.WordStages.{'Sparse' if '--sparse-input' in sys.argv else 'Parallel'}{label}"
header = """set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
""" + f"open {input_namespace}\nnamespace InitE.ClashStages{label}\n"
k = "(riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))"
claims = {
    "Oracle": f"proposed{label} = some colour",
    "Even": "WordAlloc.everyEvenColour colour = true",
    "Apply": f"WordAlloc.applyColour (WordAlloc.totalColour colour) pass{label}_8 = pass{label}_9",
    "Stack": f"everyStackVarHOL (fun x => decide (2 * {k} ≤ x)) pass{label}_9 = true",
    "Forced": f"(WordAlloc.getForced riscvConfig pass{label}_8 []).all (fun (x, y) => WordAlloc.totalColour colour x != WordAlloc.totalColour colour y) = true",
}
for name, claim in claims.items():
    text = f"import InitE.ClashStages{label}.Data\nimport {input_namespace}.Data8\nimport {input_namespace}.Data9\n" + header
    text += f"theorem {name.lower()}_eq : {claim} := by\n  conv => lhs; cbv\n  try rfl\n#print axioms {name.lower()}_eq\nend InitE.ClashStages{label}\n"
    (root / (name + ".lean")).write_text(text)
imports = ["InitE.AllocationComputation", f"InitE.ClashStages{label}.Closed"] + [f"InitE.ClashStages{label}.{name}" for name in claims]
text = "".join(f"import {module}\n" for module in imports) + header
text += f"""theorem allocation_eq : WordToWord.wordAllocWith RegAlloc.regAllocExecutable {label} riscvConfig RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg {k} pass{label}_8 proposed{label} = pass{label}_9 := by
  exact InitE.AllocationComputation.wordAllocWith_eq_of_checks _ _ _ _ _ _ _ _ _
    oracle_eq even_eq checked apply_eq stack_eq forced_eq
#print axioms allocation_eq
end InitE.ClashStages{label}
"""
(root / "Allocation.lean").write_text(text)
print(f"Prepared allocation checks for {label}")

if "--install" in sys.argv and "--sparse-input" in sys.argv:
    path = Path(f"InitE/WordStages/Sparse{label}/Proof9.lean")
    text = f"import InitE.ClashStages{label}.Allocation\n" + header.split(f"open {input_namespace}\n")[0]
    text += f"namespace {input_namespace}\n"
    text += f"theorem pass{label}_9_eq : WordToWord.wordAllocWith RegAlloc.regAllocExecutable {label} riscvConfig RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg {k} pass{label}_8 proposed{label} = pass{label}_9 := InitE.ClashStages{label}.allocation_eq\n"
    text += f"#print axioms pass{label}_9_eq\nend {input_namespace}\n"
    path.write_text(text)
    print(f"Installed closed sparse allocation pass bridge for {label}")

if "--install" in sys.argv and "--sparse-input" not in sys.argv:
    path = Path(f"InitE/WordStages/Pass{label}_9.lean")
    text = f"import InitE.WordStages.Pass{label}_8\nimport InitE.ClashStages{label}.Allocation\n" + header.split(f"open {input_namespace}\n")[0]
    text += f"namespace InitE.WordStages\ndef proposed{label} : Option (Spt Nat) := Parallel{label}.proposed{label}\ndef pass{label}_9 : WordLangProgHOL (BitVec 64) := Parallel{label}.pass{label}_9\n"
    text += f"""theorem pass{label}_9_eq : WordToWord.wordAllocWith RegAlloc.regAllocExecutable {label} riscvConfig RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg {k} pass{label}_8 proposed{label} = pass{label}_9 := by
  have input_eq : pass{label}_8 = Parallel{label}.pass{label}_8 := by
    with_unfolding_all rfl
  rw [input_eq]
  exact InitE.ClashStages{label}.allocation_eq
#print axioms pass{label}_9_eq
end InitE.WordStages
"""
    path.write_text(text)
    print(f"Installed closed allocation pass bridge for {label}")
