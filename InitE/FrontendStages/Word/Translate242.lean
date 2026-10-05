import InitE.FrontendStages.Loop.Data242
import InitE.WordStages.Source306
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate226
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate242_eq : InitE.WordFrontendComputation.compileEntry Loop.output242 =
    InitE.WordStages.source306 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate242_eq
end InitE.FrontendStages.Word
