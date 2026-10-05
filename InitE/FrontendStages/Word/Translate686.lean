import InitE.FrontendStages.Loop.Data686
import InitE.WordStages.Source750
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate670
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate686_eq : InitE.WordFrontendComputation.compileEntry Loop.output686 =
    InitE.WordStages.source750 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate686_eq
end InitE.FrontendStages.Word
