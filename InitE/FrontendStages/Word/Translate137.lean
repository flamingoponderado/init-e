import InitE.FrontendStages.Loop.Data137
import InitE.WordStages.Source201
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate121
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate137_eq : InitE.WordFrontendComputation.compileEntry Loop.output137 =
    InitE.WordStages.source201 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate137_eq
end InitE.FrontendStages.Word
