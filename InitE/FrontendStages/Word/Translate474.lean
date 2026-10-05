import InitE.FrontendStages.Loop.Data474
import InitE.WordStages.Source538
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate458
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate474_eq : InitE.WordFrontendComputation.compileEntry Loop.output474 =
    InitE.WordStages.source538 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate474_eq
end InitE.FrontendStages.Word
