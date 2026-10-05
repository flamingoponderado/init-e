import InitE.FrontendStages.Loop.Data544
import InitE.WordStages.Source608
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate528
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate544_eq : InitE.WordFrontendComputation.compileEntry Loop.output544 =
    InitE.WordStages.source608 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate544_eq
end InitE.FrontendStages.Word
