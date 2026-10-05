import InitE.FrontendStages.Loop.Data433
import InitE.WordStages.Source497
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate417
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate433_eq : InitE.WordFrontendComputation.compileEntry Loop.output433 =
    InitE.WordStages.source497 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate433_eq
end InitE.FrontendStages.Word
