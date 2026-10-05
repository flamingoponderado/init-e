import InitE.FrontendStages.Loop.Data60
import InitE.WordStages.Source124
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate44
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate60_eq : InitE.WordFrontendComputation.compileEntry Loop.output60 =
    InitE.WordStages.source124 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate60_eq
end InitE.FrontendStages.Word
