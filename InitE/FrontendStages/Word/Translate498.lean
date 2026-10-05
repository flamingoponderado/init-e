import InitE.FrontendStages.Loop.Data498
import InitE.WordStages.Source562
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate482
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate498_eq : InitE.WordFrontendComputation.compileEntry Loop.output498 =
    InitE.WordStages.source562 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate498_eq
end InitE.FrontendStages.Word
