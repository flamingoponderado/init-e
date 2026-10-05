import InitE.FrontendStages.Loop.Data695
import InitE.WordStages.Source759
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate679
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate695_eq : InitE.WordFrontendComputation.compileEntry Loop.output695 =
    InitE.WordStages.source759 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate695_eq
end InitE.FrontendStages.Word
