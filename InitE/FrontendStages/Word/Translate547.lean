import InitE.FrontendStages.Loop.Data547
import InitE.WordStages.Source611
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate531
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate547_eq : InitE.WordFrontendComputation.compileEntry Loop.output547 =
    InitE.WordStages.source611 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate547_eq
end InitE.FrontendStages.Word
