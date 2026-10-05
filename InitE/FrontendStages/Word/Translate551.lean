import InitE.FrontendStages.Loop.Data551
import InitE.WordStages.Source615
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate535
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate551_eq : InitE.WordFrontendComputation.compileEntry Loop.output551 =
    InitE.WordStages.source615 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate551_eq
end InitE.FrontendStages.Word
