import InitE.FrontendStages.Loop.Data614
import InitE.WordStages.Source678
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate598
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate614_eq : InitE.WordFrontendComputation.compileEntry Loop.output614 =
    InitE.WordStages.source678 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate614_eq
end InitE.FrontendStages.Word
