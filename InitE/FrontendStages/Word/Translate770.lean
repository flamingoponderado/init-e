import InitE.FrontendStages.Loop.Data770
import InitE.WordStages.Source834
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate754
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate770_eq : InitE.WordFrontendComputation.compileEntry Loop.output770 =
    InitE.WordStages.source834 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate770_eq
end InitE.FrontendStages.Word
