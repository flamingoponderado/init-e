import InitE.FrontendStages.Loop.Data42
import InitE.WordStages.Source106
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate26
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate42_eq : InitE.WordFrontendComputation.compileEntry Loop.output42 =
    InitE.WordStages.source106 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate42_eq
end InitE.FrontendStages.Word
