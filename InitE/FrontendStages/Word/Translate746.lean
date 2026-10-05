import InitE.FrontendStages.Loop.Data746
import InitE.WordStages.Source810
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate730
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate746_eq : InitE.WordFrontendComputation.compileEntry Loop.output746 =
    InitE.WordStages.source810 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate746_eq
end InitE.FrontendStages.Word
