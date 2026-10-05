import InitE.FrontendStages.Loop.Data280
import InitE.WordStages.Source344
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate264
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate280_eq : InitE.WordFrontendComputation.compileEntry Loop.output280 =
    InitE.WordStages.source344 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate280_eq
end InitE.FrontendStages.Word
