import InitE.FrontendStages.Loop.Data637
import InitE.WordStages.Source701
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate621
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate637_eq : InitE.WordFrontendComputation.compileEntry Loop.output637 =
    InitE.WordStages.source701 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate637_eq
end InitE.FrontendStages.Word
