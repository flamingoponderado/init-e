import InitE.FrontendStages.Loop.Data420
import InitE.WordStages.Source484
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate404
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate420_eq : InitE.WordFrontendComputation.compileEntry Loop.output420 =
    InitE.WordStages.source484 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate420_eq
end InitE.FrontendStages.Word
