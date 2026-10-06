import InitE.FrontendStages.Loop.Data522
import InitE.WordStages.Source586
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate506
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate522_eq : InitE.WordFrontendComputation.compileEntry Loop.output522 =
    InitE.WordStages.source586 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate522_eq
end InitE.FrontendStages.Word
