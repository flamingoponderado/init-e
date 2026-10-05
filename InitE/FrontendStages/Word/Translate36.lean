import InitE.FrontendStages.Loop.Data36
import InitE.WordStages.Source100
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate20
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate36_eq : InitE.WordFrontendComputation.compileEntry Loop.output36 =
    InitE.WordStages.source100 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate36_eq
end InitE.FrontendStages.Word
