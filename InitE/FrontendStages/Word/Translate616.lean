import InitE.FrontendStages.Loop.Data616
import InitE.WordStages.Source680
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate600
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate616_eq : InitE.WordFrontendComputation.compileEntry Loop.output616 =
    InitE.WordStages.source680 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate616_eq
end InitE.FrontendStages.Word
