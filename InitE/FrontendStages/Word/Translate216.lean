import InitE.FrontendStages.Loop.Data216
import InitE.WordStages.Source280
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate200
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate216_eq : InitE.WordFrontendComputation.compileEntry Loop.output216 =
    InitE.WordStages.source280 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate216_eq
end InitE.FrontendStages.Word
