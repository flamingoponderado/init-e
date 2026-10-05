import InitE.FrontendStages.Loop.Data439
import InitE.WordStages.Source503
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate423
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate439_eq : InitE.WordFrontendComputation.compileEntry Loop.output439 =
    InitE.WordStages.source503 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate439_eq
end InitE.FrontendStages.Word
