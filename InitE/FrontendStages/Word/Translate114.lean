import InitE.FrontendStages.Loop.Data114
import InitE.WordStages.Source178
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate98
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate114_eq : InitE.WordFrontendComputation.compileEntry Loop.output114 =
    InitE.WordStages.source178 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate114_eq
end InitE.FrontendStages.Word
