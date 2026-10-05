import InitE.FrontendStages.Loop.Data779
import InitE.WordStages.Source843
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate763
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate779_eq : InitE.WordFrontendComputation.compileEntry Loop.output779 =
    InitE.WordStages.source843 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate779_eq
end InitE.FrontendStages.Word
