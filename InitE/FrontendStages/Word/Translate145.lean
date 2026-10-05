import InitE.FrontendStages.Loop.Data145
import InitE.WordStages.Source209
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate129
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate145_eq : InitE.WordFrontendComputation.compileEntry Loop.output145 =
    InitE.WordStages.source209 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate145_eq
end InitE.FrontendStages.Word
