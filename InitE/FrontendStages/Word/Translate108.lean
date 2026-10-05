import InitE.FrontendStages.Loop.Data108
import InitE.WordStages.Source172
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate92
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate108_eq : InitE.WordFrontendComputation.compileEntry Loop.output108 =
    InitE.WordStages.source172 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate108_eq
end InitE.FrontendStages.Word
