import InitE.FrontendStages.Loop.Data374
import InitE.WordStages.Source438
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate358
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate374_eq : InitE.WordFrontendComputation.compileEntry Loop.output374 =
    InitE.WordStages.source438 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate374_eq
end InitE.FrontendStages.Word
