import InitE.FrontendStages.Loop.Data693
import InitE.WordStages.Source757
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate677
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate693_eq : InitE.WordFrontendComputation.compileEntry Loop.output693 =
    InitE.WordStages.source757 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate693_eq
end InitE.FrontendStages.Word
