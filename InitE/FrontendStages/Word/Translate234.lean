import InitE.FrontendStages.Loop.Data234
import InitE.WordStages.Source298
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate218
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate234_eq : InitE.WordFrontendComputation.compileEntry Loop.output234 =
    InitE.WordStages.source298 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate234_eq
end InitE.FrontendStages.Word
