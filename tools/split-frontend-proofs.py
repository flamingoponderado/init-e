#!/usr/bin/env python3
"""Connect generated declaration stages to the authoritative AST.

Run after GenWordStages with --frontend-declarations --data-dag. All proposed
agreements and simplifications remain kernel-checked Lean theorems.
"""
from pathlib import Path
import re

root = Path(__file__).resolve().parent.parent
ast = (root / "Guest/Ast.lean").read_text()
names = re.findall(r"\bguest(?:Global|Exn|Fn)_\w+", ast[ast.index("def guestAst :"):])
names = [names[-1], *names[:-1]]
base = root / "InitE/FrontendStages/Declarations"
header = """set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
"""
for i, name in enumerate(names):
    imports = f"import Guest.Ast\nimport InitE.FrontendStages.Declarations.Simplify{i}\n"
    if i >= 16:
        imports += f"import InitE.FrontendStages.Declarations.Agreement{i-16}\n"
    (base / f"Agreement{i}.lean").write_text(imports + header +
        f"theorem original{i}_eq : original{i} = Flapjack.Pancake.PanLang.declToHOL Guest.{name} := by\n"
        "  with_unfolding_all rfl\n" +
        f"#print axioms original{i}_eq\nend InitE.FrontendStages.Declarations\n")
imports = "".join(f"import InitE.FrontendStages.Declarations.Agreement{i}\n"
                  for i in range(max(0, len(names)-16), len(names)))
source = "import InitE.SourceDeclarationsCore\n" + imports + header
source += "def originals : List (Flapjack.Pancake.PanLang.DeclHOL 64) :=\n  [" + ",\n   ".join(f"original{i}" for i in range(len(names))) + "]\n"
source += "def simplifieds : List (Flapjack.Pancake.PanLang.DeclHOL 64) :=\n  [" + ",\n   ".join(f"simplified{i}" for i in range(len(names))) + "]\n"
source += "theorem sourceDeclarations_eq : InitE.sourceDeclarations = originals := by\n  simp only [originals, " + ", ".join(f"original{i}_eq" for i in range(len(names))) + "]\n  with_unfolding_all rfl\n"
source += "theorem panSimpSource_eq : Flapjack.panSimpDeclsHOL InitE.sourceDeclarations = simplifieds := by\n  rw [InitE.FrontendComputation.panSimpDecls_eq_map, sourceDeclarations_eq]\n  simp only [originals, List.map_cons, List.map_nil, " + ", ".join(f"simplify{i}_eq" for i in range(len(names))) + ", simplifieds]\n"
source += "#print axioms sourceDeclarations_eq\n#print axioms panSimpSource_eq\nend InitE.FrontendStages.Declarations\n"
(root / "InitE/FrontendStages/SourceAgreement.lean").write_text(source)
print(f"Generated {len(names)} AST agreements in sixteen dependency lanes")

for i in range(len(names)):
    imports = f"import InitE.FrontendStages.Declarations.Data{i}\nimport InitE.StructComputation\n"
    if i >= 16:
        imports += f"import InitE.FrontendStages.Declarations.Struct{i-16}\n"
    (base / f"Struct{i}.lean").write_text(imports +
        "set_option cbv.maxSteps 1000000000\nset_option cbv.warning false\n" + header +
        f"theorem struct{i}_eq (context finalContext : Flapjack.Pancake.PanStructs.CompileShapeExact.ContextExact) :\n"
        f"    InitE.StructComputation.compileDeclaration context finalContext simplified{i} = some simplified{i} := by\n"
        "  conv => lhs; cbv\n  conv => rhs; cbv\n  try rfl\n" +
        f"#print axioms struct{i}_eq\nend InitE.FrontendStages.Declarations\n")
imports = "import InitE.FrontendStages.SourceAgreement\n" + "".join(
    f"import InitE.FrontendStages.Declarations.Struct{i}\n"
    for i in range(max(0, len(names)-16), len(names)))
proof = "(by simp)"
for i in reversed(range(len(names))):
    proof = f"⟨struct{i}_eq, {proof}⟩"
(root / "InitE/FrontendStages/StructFacts.lean").write_text(imports + header +
    "theorem structSource_eq : Flapjack.Pancake.PanStructs.CompileShapeExact.compileTopExact simplifieds = simplifieds := by\n"
    "  apply InitE.StructComputation.compileTop_identity\n"
    "  simp (config := { maxSteps := 1000000 }) only [simplifieds, List.forall_mem_cons]\n" +
    "  exact " + proof + "\n#print axioms structSource_eq\nend InitE.FrontendStages.Declarations\n")
