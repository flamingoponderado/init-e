import InitE.FrontendStages.Loop.Data190
import InitE.WordStages.Source254
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate174
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate190_eq : InitE.WordFrontendComputation.compileEntry Loop.output190 =
    InitE.WordStages.source254 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate190_eq
end InitE.FrontendStages.Word
