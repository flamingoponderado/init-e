import InitE.FrontendStages.Loop.Data37
import InitE.WordStages.Source101
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate21
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate37_eq : InitE.WordFrontendComputation.compileEntry Loop.output37 =
    InitE.WordStages.source101 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate37_eq
end InitE.FrontendStages.Word
