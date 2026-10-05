import InitE.FrontendStages.Loop.Data629
import InitE.WordStages.Source693
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate613
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate629_eq : InitE.WordFrontendComputation.compileEntry Loop.output629 =
    InitE.WordStages.source693 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate629_eq
end InitE.FrontendStages.Word
