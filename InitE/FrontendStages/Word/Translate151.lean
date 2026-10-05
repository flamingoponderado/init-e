import InitE.FrontendStages.Loop.Data151
import InitE.WordStages.Source215
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate135
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate151_eq : InitE.WordFrontendComputation.compileEntry Loop.output151 =
    InitE.WordStages.source215 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate151_eq
end InitE.FrontendStages.Word
