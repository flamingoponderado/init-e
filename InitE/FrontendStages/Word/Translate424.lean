import InitE.FrontendStages.Loop.Data424
import InitE.WordStages.Source488
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate408
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate424_eq : InitE.WordFrontendComputation.compileEntry Loop.output424 =
    InitE.WordStages.source488 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate424_eq
end InitE.FrontendStages.Word
