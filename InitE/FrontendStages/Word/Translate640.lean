import InitE.FrontendStages.Loop.Data640
import InitE.WordStages.Source704
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate624
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate640_eq : InitE.WordFrontendComputation.compileEntry Loop.output640 =
    InitE.WordStages.source704 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate640_eq
end InitE.FrontendStages.Word
