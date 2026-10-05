import InitE.FrontendStages.Loop.Data687
import InitE.WordStages.Source751
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate671
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate687_eq : InitE.WordFrontendComputation.compileEntry Loop.output687 =
    InitE.WordStages.source751 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate687_eq
end InitE.FrontendStages.Word
