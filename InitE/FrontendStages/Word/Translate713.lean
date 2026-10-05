import InitE.FrontendStages.Loop.Data713
import InitE.WordStages.Source777
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate697
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate713_eq : InitE.WordFrontendComputation.compileEntry Loop.output713 =
    InitE.WordStages.source777 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate713_eq
end InitE.FrontendStages.Word
