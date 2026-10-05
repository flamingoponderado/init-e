import InitE.FrontendStages.Loop.Data780
import InitE.WordStages.Source844
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate764
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate780_eq : InitE.WordFrontendComputation.compileEntry Loop.output780 =
    InitE.WordStages.source844 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate780_eq
end InitE.FrontendStages.Word
