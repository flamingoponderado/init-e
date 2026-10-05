import InitE.FrontendStages.Loop.Data678
import InitE.WordStages.Source742
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate662
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate678_eq : InitE.WordFrontendComputation.compileEntry Loop.output678 =
    InitE.WordStages.source742 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate678_eq
end InitE.FrontendStages.Word
