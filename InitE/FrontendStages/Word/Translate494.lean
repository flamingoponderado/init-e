import InitE.FrontendStages.Loop.Data494
import InitE.WordStages.Source558
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate478
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate494_eq : InitE.WordFrontendComputation.compileEntry Loop.output494 =
    InitE.WordStages.source558 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate494_eq
end InitE.FrontendStages.Word
