import InitE.FrontendStages.Loop.Data235
import InitE.WordStages.Source299
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate219
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate235_eq : InitE.WordFrontendComputation.compileEntry Loop.output235 =
    InitE.WordStages.source299 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate235_eq
end InitE.FrontendStages.Word
