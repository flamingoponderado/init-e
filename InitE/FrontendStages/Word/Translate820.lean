import InitE.FrontendStages.Loop.Data820
import InitE.WordStages.Source884
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate804
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate820_eq : InitE.WordFrontendComputation.compileEntry Loop.output820 =
    InitE.WordStages.source884 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate820_eq
end InitE.FrontendStages.Word
