import InitE.FrontendStages.Loop.Data335
import InitE.WordStages.Source399
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate319
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate335_eq : InitE.WordFrontendComputation.compileEntry Loop.output335 =
    InitE.WordStages.source399 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate335_eq
end InitE.FrontendStages.Word
