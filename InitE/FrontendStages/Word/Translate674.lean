import InitE.FrontendStages.Loop.Data674
import InitE.WordStages.Source738
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate658
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate674_eq : InitE.WordFrontendComputation.compileEntry Loop.output674 =
    InitE.WordStages.source738 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate674_eq
end InitE.FrontendStages.Word
