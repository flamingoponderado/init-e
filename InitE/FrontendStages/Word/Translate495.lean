import InitE.FrontendStages.Loop.Data495
import InitE.WordStages.Source559
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate479
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate495_eq : InitE.WordFrontendComputation.compileEntry Loop.output495 =
    InitE.WordStages.source559 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate495_eq
end InitE.FrontendStages.Word
