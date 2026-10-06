import InitE.FrontendStages.Loop.Data6
import InitE.WordStages.Source70
import InitE.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate6_eq : InitE.WordFrontendComputation.compileEntry Loop.output6 =
    InitE.WordStages.source70 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate6_eq
end InitE.FrontendStages.Word
