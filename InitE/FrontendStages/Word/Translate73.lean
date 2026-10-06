import InitE.FrontendStages.Loop.Data73
import InitE.WordStages.Source137
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate57
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate73_eq : InitE.WordFrontendComputation.compileEntry Loop.output73 =
    InitE.WordStages.source137 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate73_eq
end InitE.FrontendStages.Word
