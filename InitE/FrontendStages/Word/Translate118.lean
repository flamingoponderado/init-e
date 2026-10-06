import InitE.FrontendStages.Loop.Data118
import InitE.WordStages.Source182
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate102
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate118_eq : InitE.WordFrontendComputation.compileEntry Loop.output118 =
    InitE.WordStages.source182 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate118_eq
end InitE.FrontendStages.Word
