import InitE.FrontendStages.Loop.Data549
import InitE.WordStages.Source613
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate533
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate549_eq : InitE.WordFrontendComputation.compileEntry Loop.output549 =
    InitE.WordStages.source613 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate549_eq
end InitE.FrontendStages.Word
