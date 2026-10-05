import InitE.FrontendStages.Loop.Data162
import InitE.WordStages.Source226
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate146
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate162_eq : InitE.WordFrontendComputation.compileEntry Loop.output162 =
    InitE.WordStages.source226 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate162_eq
end InitE.FrontendStages.Word
