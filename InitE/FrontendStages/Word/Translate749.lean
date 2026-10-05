import InitE.FrontendStages.Loop.Data749
import InitE.WordStages.Source813
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate733
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate749_eq : InitE.WordFrontendComputation.compileEntry Loop.output749 =
    InitE.WordStages.source813 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate749_eq
end InitE.FrontendStages.Word
