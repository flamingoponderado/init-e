import InitE.FrontendStages.Loop.Data663
import InitE.WordStages.Source727
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate647
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate663_eq : InitE.WordFrontendComputation.compileEntry Loop.output663 =
    InitE.WordStages.source727 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate663_eq
end InitE.FrontendStages.Word
