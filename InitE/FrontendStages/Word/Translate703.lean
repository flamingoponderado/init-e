import InitE.FrontendStages.Loop.Data703
import InitE.WordStages.Source767
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate687
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate703_eq : InitE.WordFrontendComputation.compileEntry Loop.output703 =
    InitE.WordStages.source767 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate703_eq
end InitE.FrontendStages.Word
