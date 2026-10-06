import InitE.FrontendStages.Loop.Data768
import InitE.WordStages.Source832
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate752
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate768_eq : InitE.WordFrontendComputation.compileEntry Loop.output768 =
    InitE.WordStages.source832 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate768_eq
end InitE.FrontendStages.Word
