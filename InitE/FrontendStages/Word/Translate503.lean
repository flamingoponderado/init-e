import InitE.FrontendStages.Loop.Data503
import InitE.WordStages.Source567
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate487
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate503_eq : InitE.WordFrontendComputation.compileEntry Loop.output503 =
    InitE.WordStages.source567 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate503_eq
end InitE.FrontendStages.Word
