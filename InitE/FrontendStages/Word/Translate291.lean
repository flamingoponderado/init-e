import InitE.FrontendStages.Loop.Data291
import InitE.WordStages.Source355
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate275
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate291_eq : InitE.WordFrontendComputation.compileEntry Loop.output291 =
    InitE.WordStages.source355 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate291_eq
end InitE.FrontendStages.Word
