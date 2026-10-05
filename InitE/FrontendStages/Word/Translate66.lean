import InitE.FrontendStages.Loop.Data66
import InitE.WordStages.Source130
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate50
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate66_eq : InitE.WordFrontendComputation.compileEntry Loop.output66 =
    InitE.WordStages.source130 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate66_eq
end InitE.FrontendStages.Word
