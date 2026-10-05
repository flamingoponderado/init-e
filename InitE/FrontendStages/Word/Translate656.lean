import InitE.FrontendStages.Loop.Data656
import InitE.WordStages.Source720
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate640
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate656_eq : InitE.WordFrontendComputation.compileEntry Loop.output656 =
    InitE.WordStages.source720 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate656_eq
end InitE.FrontendStages.Word
