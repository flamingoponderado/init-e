import InitE.FrontendStages.Loop.Data30
import InitE.WordStages.Source94
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate14
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate30_eq : InitE.WordFrontendComputation.compileEntry Loop.output30 =
    InitE.WordStages.source94 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate30_eq
end InitE.FrontendStages.Word
