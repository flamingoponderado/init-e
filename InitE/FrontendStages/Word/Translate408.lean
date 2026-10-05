import InitE.FrontendStages.Loop.Data408
import InitE.WordStages.Source472
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate392
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate408_eq : InitE.WordFrontendComputation.compileEntry Loop.output408 =
    InitE.WordStages.source472 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate408_eq
end InitE.FrontendStages.Word
