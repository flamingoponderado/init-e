import InitE.FrontendStages.Loop.Data58
import InitE.WordStages.Source122
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate42
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate58_eq : InitE.WordFrontendComputation.compileEntry Loop.output58 =
    InitE.WordStages.source122 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate58_eq
end InitE.FrontendStages.Word
