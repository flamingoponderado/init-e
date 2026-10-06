import InitE.FrontendStages.Loop.Data0
import InitE.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Word
def assigned0 : NumSet := Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
def variables0 : List Nat := [3, 1, 2]
def context0 : Spt Nat := Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))
theorem assigned0_eq : accVarsHOL Loop.output0.2.2 (.ln : Spt Unit) = assigned0 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem variables0_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output0.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output0.2.1)) = variables0 := by
  rw [assigned0_eq]
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem context0_eq : makeCtxtHOL 2 (Loop.output0.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output0.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output0.2.1)))
    (.ln : Spt Nat) = context0 := by
  rw [variables0_eq]
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms assigned0_eq
#print axioms variables0_eq
#print axioms context0_eq
end InitE.FrontendStages.Word
