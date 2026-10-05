import InitE.FrontendStages.Loop.Data578
import InitE.WordStages.Source642
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate562
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate578_eq : InitE.WordFrontendComputation.compileEntry Loop.output578 =
    InitE.WordStages.source642 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate578_eq
end InitE.FrontendStages.Word
