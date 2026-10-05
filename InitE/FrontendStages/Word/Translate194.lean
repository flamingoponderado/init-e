import InitE.FrontendStages.Loop.Data194
import InitE.WordStages.Source258
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate178
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate194_eq : InitE.WordFrontendComputation.compileEntry Loop.output194 =
    InitE.WordStages.source258 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate194_eq
end InitE.FrontendStages.Word
