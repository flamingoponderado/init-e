import InitE.FrontendStages.Loop.Data724
import InitE.WordStages.Source788
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate708
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate724_eq : InitE.WordFrontendComputation.compileEntry Loop.output724 =
    InitE.WordStages.source788 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate724_eq
end InitE.FrontendStages.Word
