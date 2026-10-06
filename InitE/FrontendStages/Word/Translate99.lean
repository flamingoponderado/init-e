import InitE.FrontendStages.Loop.Data99
import InitE.WordStages.Source163
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate83
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate99_eq : InitE.WordFrontendComputation.compileEntry Loop.output99 =
    InitE.WordStages.source163 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate99_eq
end InitE.FrontendStages.Word
