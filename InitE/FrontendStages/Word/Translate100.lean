import InitE.FrontendStages.Loop.Data100
import InitE.WordStages.Source164
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate84
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate100_eq : InitE.WordFrontendComputation.compileEntry Loop.output100 =
    InitE.WordStages.source164 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate100_eq
end InitE.FrontendStages.Word
