import InitE.FrontendStages.Loop.Data103
import InitE.WordStages.Source167
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate87
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate103_eq : InitE.WordFrontendComputation.compileEntry Loop.output103 =
    InitE.WordStages.source167 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate103_eq
end InitE.FrontendStages.Word
