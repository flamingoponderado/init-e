import InitE.FrontendStages.Loop.Data362
import InitE.WordStages.Source426
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate346
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate362_eq : InitE.WordFrontendComputation.compileEntry Loop.output362 =
    InitE.WordStages.source426 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate362_eq
end InitE.FrontendStages.Word
