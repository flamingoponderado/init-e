import InitE.FrontendStages.Loop.Data410
import InitE.WordStages.Source474
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate394
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate410_eq : InitE.WordFrontendComputation.compileEntry Loop.output410 =
    InitE.WordStages.source474 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate410_eq
end InitE.FrontendStages.Word
