import InitE.FrontendStages.Loop.Data93
import InitE.WordStages.Source157
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate77
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate93_eq : InitE.WordFrontendComputation.compileEntry Loop.output93 =
    InitE.WordStages.source157 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate93_eq
end InitE.FrontendStages.Word
