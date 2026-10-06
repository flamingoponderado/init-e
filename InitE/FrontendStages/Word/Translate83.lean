import InitE.FrontendStages.Loop.Data83
import InitE.WordStages.Source147
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate67
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate83_eq : InitE.WordFrontendComputation.compileEntry Loop.output83 =
    InitE.WordStages.source147 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate83_eq
end InitE.FrontendStages.Word
