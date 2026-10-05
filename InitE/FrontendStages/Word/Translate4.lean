import InitE.FrontendStages.Loop.Data4
import InitE.WordStages.Source68
import InitE.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate4_eq : InitE.WordFrontendComputation.compileEntry Loop.output4 =
    InitE.WordStages.source68 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate4_eq
end InitE.FrontendStages.Word
