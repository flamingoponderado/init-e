import InitE.FrontendStages.Loop.Data681
import InitE.WordStages.Source745
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate665
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate681_eq : InitE.WordFrontendComputation.compileEntry Loop.output681 =
    InitE.WordStages.source745 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate681_eq
end InitE.FrontendStages.Word
