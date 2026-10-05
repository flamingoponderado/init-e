import InitE.FrontendStages.Loop.Data271
import InitE.WordStages.Source335
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate255
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate271_eq : InitE.WordFrontendComputation.compileEntry Loop.output271 =
    InitE.WordStages.source335 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate271_eq
end InitE.FrontendStages.Word
