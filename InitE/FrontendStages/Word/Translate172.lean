import InitE.FrontendStages.Loop.Data172
import InitE.WordStages.Source236
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate156
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate172_eq : InitE.WordFrontendComputation.compileEntry Loop.output172 =
    InitE.WordStages.source236 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate172_eq
end InitE.FrontendStages.Word
