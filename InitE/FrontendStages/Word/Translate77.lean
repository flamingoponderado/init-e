import InitE.FrontendStages.Loop.Data77
import InitE.WordStages.Source141
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate61
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate77_eq : InitE.WordFrontendComputation.compileEntry Loop.output77 =
    InitE.WordStages.source141 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate77_eq
end InitE.FrontendStages.Word
