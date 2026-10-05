import InitE.FrontendStages.Loop.Data586
import InitE.WordStages.Source650
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate570
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate586_eq : InitE.WordFrontendComputation.compileEntry Loop.output586 =
    InitE.WordStages.source650 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate586_eq
end InitE.FrontendStages.Word
