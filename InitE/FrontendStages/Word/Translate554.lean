import InitE.FrontendStages.Loop.Data554
import InitE.WordStages.Source618
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate538
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate554_eq : InitE.WordFrontendComputation.compileEntry Loop.output554 =
    InitE.WordStages.source618 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate554_eq
end InitE.FrontendStages.Word
