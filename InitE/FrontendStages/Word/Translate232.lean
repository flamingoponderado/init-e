import InitE.FrontendStages.Loop.Data232
import InitE.WordStages.Source296
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate216
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate232_eq : InitE.WordFrontendComputation.compileEntry Loop.output232 =
    InitE.WordStages.source296 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate232_eq
end InitE.FrontendStages.Word
