import InitE.FrontendStages.Loop.Data789
import InitE.WordStages.Source853
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate773
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate789_eq : InitE.WordFrontendComputation.compileEntry Loop.output789 =
    InitE.WordStages.source853 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate789_eq
end InitE.FrontendStages.Word
