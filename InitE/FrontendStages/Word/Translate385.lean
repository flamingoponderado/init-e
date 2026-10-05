import InitE.FrontendStages.Loop.Data385
import InitE.WordStages.Source449
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate369
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate385_eq : InitE.WordFrontendComputation.compileEntry Loop.output385 =
    InitE.WordStages.source449 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate385_eq
end InitE.FrontendStages.Word
