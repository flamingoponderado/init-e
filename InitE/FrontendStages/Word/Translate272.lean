import InitE.FrontendStages.Loop.Data272
import InitE.WordStages.Source336
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate256
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate272_eq : InitE.WordFrontendComputation.compileEntry Loop.output272 =
    InitE.WordStages.source336 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate272_eq
end InitE.FrontendStages.Word
