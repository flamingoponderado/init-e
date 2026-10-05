import InitE.FrontendStages.Loop.Data47
import InitE.WordStages.Source111
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate31
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate47_eq : InitE.WordFrontendComputation.compileEntry Loop.output47 =
    InitE.WordStages.source111 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate47_eq
end InitE.FrontendStages.Word
