import InitE.FrontendStages.Loop.Data546
import InitE.WordStages.Source610
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate530
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate546_eq : InitE.WordFrontendComputation.compileEntry Loop.output546 =
    InitE.WordStages.source610 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate546_eq
end InitE.FrontendStages.Word
