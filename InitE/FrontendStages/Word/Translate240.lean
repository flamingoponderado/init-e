import InitE.FrontendStages.Loop.Data240
import InitE.WordStages.Source304
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate224
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate240_eq : InitE.WordFrontendComputation.compileEntry Loop.output240 =
    InitE.WordStages.source304 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate240_eq
end InitE.FrontendStages.Word
