import InitE.FrontendStages.Loop.Data590
import InitE.WordStages.Source654
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate574
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate590_eq : InitE.WordFrontendComputation.compileEntry Loop.output590 =
    InitE.WordStages.source654 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate590_eq
end InitE.FrontendStages.Word
