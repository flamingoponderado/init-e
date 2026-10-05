import InitE.FrontendStages.Loop.Data166
import InitE.WordStages.Source230
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate150
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate166_eq : InitE.WordFrontendComputation.compileEntry Loop.output166 =
    InitE.WordStages.source230 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate166_eq
end InitE.FrontendStages.Word
