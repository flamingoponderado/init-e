import InitE.FrontendStages.Loop.Data518
import InitE.WordStages.Source582
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate502
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate518_eq : InitE.WordFrontendComputation.compileEntry Loop.output518 =
    InitE.WordStages.source582 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate518_eq
end InitE.FrontendStages.Word
