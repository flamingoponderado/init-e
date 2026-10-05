import InitE.FrontendStages.Loop.Data459
import InitE.WordStages.Source523
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate443
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate459_eq : InitE.WordFrontendComputation.compileEntry Loop.output459 =
    InitE.WordStages.source523 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate459_eq
end InitE.FrontendStages.Word
