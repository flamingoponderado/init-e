import InitE.FrontendStages.Loop.Data510
import InitE.WordStages.Source574
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate494
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate510_eq : InitE.WordFrontendComputation.compileEntry Loop.output510 =
    InitE.WordStages.source574 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate510_eq
end InitE.FrontendStages.Word
