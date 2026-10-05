import InitE.FrontendStages.Loop.Data672
import InitE.WordStages.Source736
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate656
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate672_eq : InitE.WordFrontendComputation.compileEntry Loop.output672 =
    InitE.WordStages.source736 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate672_eq
end InitE.FrontendStages.Word
