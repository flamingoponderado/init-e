import InitE.FrontendStages.Loop.Data306
import InitE.WordStages.Source370
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate290
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate306_eq : InitE.WordFrontendComputation.compileEntry Loop.output306 =
    InitE.WordStages.source370 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate306_eq
end InitE.FrontendStages.Word
