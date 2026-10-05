import InitE.FrontendStages.Loop.Data89
import InitE.WordStages.Source153
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate73
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate89_eq : InitE.WordFrontendComputation.compileEntry Loop.output89 =
    InitE.WordStages.source153 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate89_eq
end InitE.FrontendStages.Word
