import InitE.FrontendStages.Loop.Data164
import InitE.WordStages.Source228
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate148
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate164_eq : InitE.WordFrontendComputation.compileEntry Loop.output164 =
    InitE.WordStages.source228 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate164_eq
end InitE.FrontendStages.Word
