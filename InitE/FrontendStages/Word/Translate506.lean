import InitE.FrontendStages.Loop.Data506
import InitE.WordStages.Source570
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate490
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate506_eq : InitE.WordFrontendComputation.compileEntry Loop.output506 =
    InitE.WordStages.source570 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate506_eq
end InitE.FrontendStages.Word
