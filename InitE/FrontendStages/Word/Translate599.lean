import InitE.FrontendStages.Loop.Data599
import InitE.WordStages.Source663
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate583
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate599_eq : InitE.WordFrontendComputation.compileEntry Loop.output599 =
    InitE.WordStages.source663 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate599_eq
end InitE.FrontendStages.Word
