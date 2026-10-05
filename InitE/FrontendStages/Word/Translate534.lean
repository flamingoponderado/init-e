import InitE.FrontendStages.Loop.Data534
import InitE.WordStages.Source598
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate518
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate534_eq : InitE.WordFrontendComputation.compileEntry Loop.output534 =
    InitE.WordStages.source598 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate534_eq
end InitE.FrontendStages.Word
