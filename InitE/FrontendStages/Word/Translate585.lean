import InitE.FrontendStages.Loop.Data585
import InitE.WordStages.Source649
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate569
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate585_eq : InitE.WordFrontendComputation.compileEntry Loop.output585 =
    InitE.WordStages.source649 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate585_eq
end InitE.FrontendStages.Word
