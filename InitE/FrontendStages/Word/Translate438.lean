import InitE.FrontendStages.Loop.Data438
import InitE.WordStages.Source502
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate422
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate438_eq : InitE.WordFrontendComputation.compileEntry Loop.output438 =
    InitE.WordStages.source502 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate438_eq
end InitE.FrontendStages.Word
