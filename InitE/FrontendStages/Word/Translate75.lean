import InitE.FrontendStages.Loop.Data75
import InitE.WordStages.Source139
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate59
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate75_eq : InitE.WordFrontendComputation.compileEntry Loop.output75 =
    InitE.WordStages.source139 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate75_eq
end InitE.FrontendStages.Word
