import InitE.FrontendStages.Loop.Data409
import InitE.WordStages.Source473
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate393
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate409_eq : InitE.WordFrontendComputation.compileEntry Loop.output409 =
    InitE.WordStages.source473 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate409_eq
end InitE.FrontendStages.Word
