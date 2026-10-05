import InitE.FrontendStages.Loop.Data671
import InitE.WordStages.Source735
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate655
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate671_eq : InitE.WordFrontendComputation.compileEntry Loop.output671 =
    InitE.WordStages.source735 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate671_eq
end InitE.FrontendStages.Word
