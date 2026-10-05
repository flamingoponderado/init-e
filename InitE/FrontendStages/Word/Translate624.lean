import InitE.FrontendStages.Loop.Data624
import InitE.WordStages.Source688
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate608
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate624_eq : InitE.WordFrontendComputation.compileEntry Loop.output624 =
    InitE.WordStages.source688 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate624_eq
end InitE.FrontendStages.Word
