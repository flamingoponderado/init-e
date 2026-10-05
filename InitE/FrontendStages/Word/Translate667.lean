import InitE.FrontendStages.Loop.Data667
import InitE.WordStages.Source731
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate651
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate667_eq : InitE.WordFrontendComputation.compileEntry Loop.output667 =
    InitE.WordStages.source731 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate667_eq
end InitE.FrontendStages.Word
