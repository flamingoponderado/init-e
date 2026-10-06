import InitE.FrontendStages.Loop.Data694
import InitE.WordStages.Source758
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate678
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate694_eq : InitE.WordFrontendComputation.compileEntry Loop.output694 =
    InitE.WordStages.source758 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate694_eq
end InitE.FrontendStages.Word
