import InitE.FrontendStages.Loop.Data184
import InitE.WordStages.Source248
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate168
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate184_eq : InitE.WordFrontendComputation.compileEntry Loop.output184 =
    InitE.WordStages.source248 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate184_eq
end InitE.FrontendStages.Word
