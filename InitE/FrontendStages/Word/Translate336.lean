import InitE.FrontendStages.Loop.Data336
import InitE.WordStages.Source400
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate320
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate336_eq : InitE.WordFrontendComputation.compileEntry Loop.output336 =
    InitE.WordStages.source400 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate336_eq
end InitE.FrontendStages.Word
