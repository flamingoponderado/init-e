import InitE.FrontendStages.Loop.Data269
import InitE.WordStages.Source333
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate253
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate269_eq : InitE.WordFrontendComputation.compileEntry Loop.output269 =
    InitE.WordStages.source333 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate269_eq
end InitE.FrontendStages.Word
