import InitE.FrontendStages.Loop.Data153
import InitE.WordStages.Source217
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate137
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate153_eq : InitE.WordFrontendComputation.compileEntry Loop.output153 =
    InitE.WordStages.source217 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate153_eq
end InitE.FrontendStages.Word
