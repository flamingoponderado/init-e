import InitE.FrontendStages.Loop.Data692
import InitE.WordStages.Source756
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate676
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate692_eq : InitE.WordFrontendComputation.compileEntry Loop.output692 =
    InitE.WordStages.source756 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate692_eq
end InitE.FrontendStages.Word
