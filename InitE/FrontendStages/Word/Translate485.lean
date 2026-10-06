import InitE.FrontendStages.Loop.Data485
import InitE.WordStages.Source549
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate469
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate485_eq : InitE.WordFrontendComputation.compileEntry Loop.output485 =
    InitE.WordStages.source549 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate485_eq
end InitE.FrontendStages.Word
