import InitE.FrontendStages.Loop.Data187
import InitE.WordStages.Source251
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate171
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate187_eq : InitE.WordFrontendComputation.compileEntry Loop.output187 =
    InitE.WordStages.source251 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate187_eq
end InitE.FrontendStages.Word
