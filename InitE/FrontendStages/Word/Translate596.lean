import InitE.FrontendStages.Loop.Data596
import InitE.WordStages.Source660
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate580
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate596_eq : InitE.WordFrontendComputation.compileEntry Loop.output596 =
    InitE.WordStages.source660 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate596_eq
end InitE.FrontendStages.Word
