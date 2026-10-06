import InitE.FrontendStages.Loop.Data812
import InitE.WordStages.Source876
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate796
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate812_eq : InitE.WordFrontendComputation.compileEntry Loop.output812 =
    InitE.WordStages.source876 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate812_eq
end InitE.FrontendStages.Word
