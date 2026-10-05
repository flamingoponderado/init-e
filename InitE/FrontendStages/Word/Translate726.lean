import InitE.FrontendStages.Loop.Data726
import InitE.WordStages.Source790
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate710
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate726_eq : InitE.WordFrontendComputation.compileEntry Loop.output726 =
    InitE.WordStages.source790 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate726_eq
end InitE.FrontendStages.Word
