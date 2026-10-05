import InitE.FrontendStages.Loop.Data122
import InitE.WordStages.Source186
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate106
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate122_eq : InitE.WordFrontendComputation.compileEntry Loop.output122 =
    InitE.WordStages.source186 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate122_eq
end InitE.FrontendStages.Word
