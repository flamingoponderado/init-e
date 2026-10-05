import InitE.FrontendStages.Loop.Data530
import InitE.WordStages.Source594
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate514
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate530_eq : InitE.WordFrontendComputation.compileEntry Loop.output530 =
    InitE.WordStages.source594 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate530_eq
end InitE.FrontendStages.Word
