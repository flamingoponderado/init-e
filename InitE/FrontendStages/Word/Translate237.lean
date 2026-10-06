import InitE.FrontendStages.Loop.Data237
import InitE.WordStages.Source301
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate221
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate237_eq : InitE.WordFrontendComputation.compileEntry Loop.output237 =
    InitE.WordStages.source301 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate237_eq
end InitE.FrontendStages.Word
