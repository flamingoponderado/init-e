import InitE.FrontendStages.Loop.Data61
import InitE.WordStages.Source125
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate45
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate61_eq : InitE.WordFrontendComputation.compileEntry Loop.output61 =
    InitE.WordStages.source125 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate61_eq
end InitE.FrontendStages.Word
