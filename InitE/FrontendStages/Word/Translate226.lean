import InitE.FrontendStages.Loop.Data226
import InitE.WordStages.Source290
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate210
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate226_eq : InitE.WordFrontendComputation.compileEntry Loop.output226 =
    InitE.WordStages.source290 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate226_eq
end InitE.FrontendStages.Word
