import InitE.FrontendStages.Loop.Data131
import InitE.WordStages.Source195
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate115
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate131_eq : InitE.WordFrontendComputation.compileEntry Loop.output131 =
    InitE.WordStages.source195 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate131_eq
end InitE.FrontendStages.Word
