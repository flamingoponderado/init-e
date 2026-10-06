import InitE.FrontendStages.Loop.Data202
import InitE.WordStages.Source266
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate186
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate202_eq : InitE.WordFrontendComputation.compileEntry Loop.output202 =
    InitE.WordStages.source266 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate202_eq
end InitE.FrontendStages.Word
