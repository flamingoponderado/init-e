import InitE.FrontendStages.Loop.Data603
import InitE.WordStages.Source667
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate587
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate603_eq : InitE.WordFrontendComputation.compileEntry Loop.output603 =
    InitE.WordStages.source667 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate603_eq
end InitE.FrontendStages.Word
