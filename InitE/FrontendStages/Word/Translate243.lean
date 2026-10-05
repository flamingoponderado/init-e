import InitE.FrontendStages.Loop.Data243
import InitE.WordStages.Source307
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate227
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate243_eq : InitE.WordFrontendComputation.compileEntry Loop.output243 =
    InitE.WordStages.source307 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate243_eq
end InitE.FrontendStages.Word
