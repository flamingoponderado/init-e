import InitE.FrontendStages.Loop.Data813
import InitE.WordStages.Source877
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate797
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate813_eq : InitE.WordFrontendComputation.compileEntry Loop.output813 =
    InitE.WordStages.source877 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate813_eq
end InitE.FrontendStages.Word
