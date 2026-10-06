import InitE.FrontendStages.Loop.Data741
import InitE.WordStages.Source805
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate725
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate741_eq : InitE.WordFrontendComputation.compileEntry Loop.output741 =
    InitE.WordStages.source805 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate741_eq
end InitE.FrontendStages.Word
