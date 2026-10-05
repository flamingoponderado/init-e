import InitE.FrontendStages.Loop.Data90
import InitE.WordStages.Source154
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate74
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate90_eq : InitE.WordFrontendComputation.compileEntry Loop.output90 =
    InitE.WordStages.source154 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate90_eq
end InitE.FrontendStages.Word
