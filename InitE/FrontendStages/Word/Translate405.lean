import InitE.FrontendStages.Loop.Data405
import InitE.WordStages.Source469
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate389
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate405_eq : InitE.WordFrontendComputation.compileEntry Loop.output405 =
    InitE.WordStages.source469 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate405_eq
end InitE.FrontendStages.Word
