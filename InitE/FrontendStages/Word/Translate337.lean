import InitE.FrontendStages.Loop.Data337
import InitE.WordStages.Source401
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate321
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate337_eq : InitE.WordFrontendComputation.compileEntry Loop.output337 =
    InitE.WordStages.source401 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate337_eq
end InitE.FrontendStages.Word
