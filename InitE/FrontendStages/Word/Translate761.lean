import InitE.FrontendStages.Loop.Data761
import InitE.WordStages.Source825
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate745
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate761_eq : InitE.WordFrontendComputation.compileEntry Loop.output761 =
    InitE.WordStages.source825 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate761_eq
end InitE.FrontendStages.Word
