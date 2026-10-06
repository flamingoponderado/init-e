import InitE.FrontendStages.Loop.Data825
import InitE.WordStages.Source889
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate809
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate825_eq : InitE.WordFrontendComputation.compileEntry Loop.output825 =
    InitE.WordStages.source889 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate825_eq
end InitE.FrontendStages.Word
