import InitE.FrontendStages.Loop.Data550
import InitE.WordStages.Source614
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate534
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate550_eq : InitE.WordFrontendComputation.compileEntry Loop.output550 =
    InitE.WordStages.source614 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate550_eq
end InitE.FrontendStages.Word
