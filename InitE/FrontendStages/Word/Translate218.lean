import InitE.FrontendStages.Loop.Data218
import InitE.WordStages.Source282
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate202
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate218_eq : InitE.WordFrontendComputation.compileEntry Loop.output218 =
    InitE.WordStages.source282 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate218_eq
end InitE.FrontendStages.Word
