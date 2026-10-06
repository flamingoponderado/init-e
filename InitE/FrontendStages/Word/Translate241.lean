import InitE.FrontendStages.Loop.Data241
import InitE.WordStages.Source305
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate225
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate241_eq : InitE.WordFrontendComputation.compileEntry Loop.output241 =
    InitE.WordStages.source305 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate241_eq
end InitE.FrontendStages.Word
