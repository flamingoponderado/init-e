import InitE.FrontendStages.Loop.Data527
import InitE.WordStages.Source591
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate511
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate527_eq : InitE.WordFrontendComputation.compileEntry Loop.output527 =
    InitE.WordStages.source591 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate527_eq
end InitE.FrontendStages.Word
