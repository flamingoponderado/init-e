import InitE.FrontendStages.Loop.Data519
import InitE.WordStages.Source583
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate503
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate519_eq : InitE.WordFrontendComputation.compileEntry Loop.output519 =
    InitE.WordStages.source583 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate519_eq
end InitE.FrontendStages.Word
