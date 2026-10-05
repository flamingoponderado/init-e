import InitE.FrontendStages.Loop.Data403
import InitE.WordStages.Source467
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate387
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate403_eq : InitE.WordFrontendComputation.compileEntry Loop.output403 =
    InitE.WordStages.source467 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate403_eq
end InitE.FrontendStages.Word
