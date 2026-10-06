import InitE.FrontendStages.Loop.Data651
import InitE.WordStages.Source715
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate635
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate651_eq : InitE.WordFrontendComputation.compileEntry Loop.output651 =
    InitE.WordStages.source715 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate651_eq
end InitE.FrontendStages.Word
