import InitE.FrontendStages.Loop.Data182
import InitE.WordStages.Source246
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate166
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate182_eq : InitE.WordFrontendComputation.compileEntry Loop.output182 =
    InitE.WordStages.source246 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate182_eq
end InitE.FrontendStages.Word
