import InitE.FrontendStages.Loop.Data441
import InitE.WordStages.Source505
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate425
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate441_eq : InitE.WordFrontendComputation.compileEntry Loop.output441 =
    InitE.WordStages.source505 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate441_eq
end InitE.FrontendStages.Word
