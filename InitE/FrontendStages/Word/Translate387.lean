import InitE.FrontendStages.Loop.Data387
import InitE.WordStages.Source451
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate371
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate387_eq : InitE.WordFrontendComputation.compileEntry Loop.output387 =
    InitE.WordStages.source451 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate387_eq
end InitE.FrontendStages.Word
