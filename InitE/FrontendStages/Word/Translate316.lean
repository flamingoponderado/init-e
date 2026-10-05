import InitE.FrontendStages.Loop.Data316
import InitE.WordStages.Source380
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate300
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate316_eq : InitE.WordFrontendComputation.compileEntry Loop.output316 =
    InitE.WordStages.source380 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate316_eq
end InitE.FrontendStages.Word
