import InitE.FrontendStages.Loop.Data539
import InitE.WordStages.Source603
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate523
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate539_eq : InitE.WordFrontendComputation.compileEntry Loop.output539 =
    InitE.WordStages.source603 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate539_eq
end InitE.FrontendStages.Word
