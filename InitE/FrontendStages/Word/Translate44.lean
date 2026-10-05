import InitE.FrontendStages.Loop.Data44
import InitE.WordStages.Source108
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate28
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate44_eq : InitE.WordFrontendComputation.compileEntry Loop.output44 =
    InitE.WordStages.source108 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate44_eq
end InitE.FrontendStages.Word
