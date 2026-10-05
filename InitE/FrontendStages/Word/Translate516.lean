import InitE.FrontendStages.Loop.Data516
import InitE.WordStages.Source580
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate500
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate516_eq : InitE.WordFrontendComputation.compileEntry Loop.output516 =
    InitE.WordStages.source580 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate516_eq
end InitE.FrontendStages.Word
