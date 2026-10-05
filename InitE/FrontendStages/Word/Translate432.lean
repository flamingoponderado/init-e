import InitE.FrontendStages.Loop.Data432
import InitE.WordStages.Source496
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate416
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate432_eq : InitE.WordFrontendComputation.compileEntry Loop.output432 =
    InitE.WordStages.source496 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate432_eq
end InitE.FrontendStages.Word
