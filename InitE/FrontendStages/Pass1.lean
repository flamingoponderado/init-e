import InitE.FrontendStages.Pass0
import InitE.FrontendStages.StructFacts

/-! The second frontend stage reuses context-general declaration certificates. -/
namespace InitE.FrontendStages
open Flapjack

def pass1 : List (Pancake.PanLang.DeclHOL 64) := pass0

theorem pass1_eq : Pancake.PanStructs.CompileShapeExact.compileTopExact pass0 = pass1 :=
  Declarations.structSource_eq

#print axioms pass1_eq
end InitE.FrontendStages
