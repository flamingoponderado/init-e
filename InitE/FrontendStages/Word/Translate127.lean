import InitE.FrontendStages.Loop.Data127
import InitE.WordStages.Source191
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate111
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate127_eq : InitE.WordFrontendComputation.compileEntry Loop.output127 =
    InitE.WordStages.source191 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate127_eq
end InitE.FrontendStages.Word
