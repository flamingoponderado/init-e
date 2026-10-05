import InitE.FrontendStages.Loop.Data759
import InitE.WordStages.Source823
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate743
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate759_eq : InitE.WordFrontendComputation.compileEntry Loop.output759 =
    InitE.WordStages.source823 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate759_eq
end InitE.FrontendStages.Word
