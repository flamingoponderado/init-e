import InitE.FrontendStages.Loop.Data140
import InitE.WordStages.Source204
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate124
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate140_eq : InitE.WordFrontendComputation.compileEntry Loop.output140 =
    InitE.WordStages.source204 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate140_eq
end InitE.FrontendStages.Word
