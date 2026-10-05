import InitE.FrontendStages.Loop.Data156
import InitE.WordStages.Source220
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate140
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate156_eq : InitE.WordFrontendComputation.compileEntry Loop.output156 =
    InitE.WordStages.source220 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate156_eq
end InitE.FrontendStages.Word
