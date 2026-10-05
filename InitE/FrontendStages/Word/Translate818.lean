import InitE.FrontendStages.Loop.Data818
import InitE.WordStages.Source882
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate802
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate818_eq : InitE.WordFrontendComputation.compileEntry Loop.output818 =
    InitE.WordStages.source882 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate818_eq
end InitE.FrontendStages.Word
