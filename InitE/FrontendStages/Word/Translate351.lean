import InitE.FrontendStages.Loop.Data351
import InitE.WordStages.Source415
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate335
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate351_eq : InitE.WordFrontendComputation.compileEntry Loop.output351 =
    InitE.WordStages.source415 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate351_eq
end InitE.FrontendStages.Word
