import InitE.FrontendStages.Loop.Data762
import InitE.WordStages.Source826
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate746
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate762_eq : InitE.WordFrontendComputation.compileEntry Loop.output762 =
    InitE.WordStages.source826 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate762_eq
end InitE.FrontendStages.Word
