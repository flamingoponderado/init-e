import InitE.FrontendStages.Loop.Data104
import InitE.WordStages.Source168
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate88
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate104_eq : InitE.WordFrontendComputation.compileEntry Loop.output104 =
    InitE.WordStages.source168 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate104_eq
end InitE.FrontendStages.Word
