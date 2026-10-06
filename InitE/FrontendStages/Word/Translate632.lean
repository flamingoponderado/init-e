import InitE.FrontendStages.Loop.Data632
import InitE.WordStages.Source696
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate616
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate632_eq : InitE.WordFrontendComputation.compileEntry Loop.output632 =
    InitE.WordStages.source696 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate632_eq
end InitE.FrontendStages.Word
