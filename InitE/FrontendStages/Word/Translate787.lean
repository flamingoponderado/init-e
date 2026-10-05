import InitE.FrontendStages.Loop.Data787
import InitE.WordStages.Source851
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate771
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate787_eq : InitE.WordFrontendComputation.compileEntry Loop.output787 =
    InitE.WordStages.source851 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate787_eq
end InitE.FrontendStages.Word
