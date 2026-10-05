import InitE.FrontendStages.Loop.Data113
import InitE.WordStages.Source177
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate97
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate113_eq : InitE.WordFrontendComputation.compileEntry Loop.output113 =
    InitE.WordStages.source177 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate113_eq
end InitE.FrontendStages.Word
