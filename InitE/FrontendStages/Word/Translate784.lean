import InitE.FrontendStages.Loop.Data784
import InitE.WordStages.Source848
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate768
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate784_eq : InitE.WordFrontendComputation.compileEntry Loop.output784 =
    InitE.WordStages.source848 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate784_eq
end InitE.FrontendStages.Word
