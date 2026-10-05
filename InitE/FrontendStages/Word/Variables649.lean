import InitE.FrontendStages.Loop.Data649
import InitE.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Word
def assigned649 : NumSet := Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
def variables649 : List Nat := [3, 1, 4, 2]
def context649 : Spt Nat := Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 6))
  (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 2))
theorem assigned649_eq : accVarsHOL Loop.output649.2.2 (.ln : Spt Unit) = assigned649 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem variables649_eq : Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output649.2.2 (.ln : Spt Unit))
    (Flapjack.LoopToWord.toNumSetHOL Loop.output649.2.1)) = variables649 := by
  rw [assigned649_eq]
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
theorem context649_eq : makeCtxtHOL 2 (Loop.output649.2.1 ++
    Flapjack.LoopToWord.fromNumSetHOL (sptDifference (accVarsHOL Loop.output649.2.2 (.ln : Spt Unit)) (Flapjack.LoopToWord.toNumSetHOL Loop.output649.2.1)))
    (.ln : Spt Nat) = context649 := by
  rw [variables649_eq]
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms assigned649_eq
#print axioms variables649_eq
#print axioms context649_eq
end InitE.FrontendStages.Word
