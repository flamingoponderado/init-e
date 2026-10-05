import InitE.FrontendStages.Loop.Data161
import InitE.WordStages.Source225
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate145
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate161_eq : InitE.WordFrontendComputation.compileEntry Loop.output161 =
    InitE.WordStages.source225 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate161_eq
end InitE.FrontendStages.Word
