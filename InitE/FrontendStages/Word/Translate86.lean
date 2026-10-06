import InitE.FrontendStages.Loop.Data86
import InitE.WordStages.Source150
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate70
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate86_eq : InitE.WordFrontendComputation.compileEntry Loop.output86 =
    InitE.WordStages.source150 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate86_eq
end InitE.FrontendStages.Word
