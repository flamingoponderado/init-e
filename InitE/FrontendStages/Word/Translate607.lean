import InitE.FrontendStages.Loop.Data607
import InitE.WordStages.Source671
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate591
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate607_eq : InitE.WordFrontendComputation.compileEntry Loop.output607 =
    InitE.WordStages.source671 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate607_eq
end InitE.FrontendStages.Word
