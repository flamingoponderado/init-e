import InitE.FrontendStages.Loop.Data721
import InitE.WordStages.Source785
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate705
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate721_eq : InitE.WordFrontendComputation.compileEntry Loop.output721 =
    InitE.WordStages.source785 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate721_eq
end InitE.FrontendStages.Word
