import InitE.FrontendStages.Loop.Data301
import InitE.WordStages.Source365
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate285
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate301_eq : InitE.WordFrontendComputation.compileEntry Loop.output301 =
    InitE.WordStages.source365 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate301_eq
end InitE.FrontendStages.Word
