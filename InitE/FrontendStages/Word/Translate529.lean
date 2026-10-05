import InitE.FrontendStages.Loop.Data529
import InitE.WordStages.Source593
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate513
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate529_eq : InitE.WordFrontendComputation.compileEntry Loop.output529 =
    InitE.WordStages.source593 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate529_eq
end InitE.FrontendStages.Word
