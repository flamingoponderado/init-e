import InitE.FrontendStages.Loop.Data419
import InitE.WordStages.Source483
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate403
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate419_eq : InitE.WordFrontendComputation.compileEntry Loop.output419 =
    InitE.WordStages.source483 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate419_eq
end InitE.FrontendStages.Word
