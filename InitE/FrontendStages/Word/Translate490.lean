import InitE.FrontendStages.Loop.Data490
import InitE.WordStages.Source554
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate474
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate490_eq : InitE.WordFrontendComputation.compileEntry Loop.output490 =
    InitE.WordStages.source554 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate490_eq
end InitE.FrontendStages.Word
