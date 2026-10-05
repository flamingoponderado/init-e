import InitE.FrontendStages.Loop.Data34
import InitE.WordStages.Source98
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate18
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate34_eq : InitE.WordFrontendComputation.compileEntry Loop.output34 =
    InitE.WordStages.source98 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate34_eq
end InitE.FrontendStages.Word
