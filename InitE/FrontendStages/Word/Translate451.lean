import InitE.FrontendStages.Loop.Data451
import InitE.WordStages.Source515
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate435
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate451_eq : InitE.WordFrontendComputation.compileEntry Loop.output451 =
    InitE.WordStages.source515 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate451_eq
end InitE.FrontendStages.Word
