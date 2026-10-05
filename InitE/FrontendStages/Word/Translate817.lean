import InitE.FrontendStages.Loop.Data817
import InitE.WordStages.Source881
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate801
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate817_eq : InitE.WordFrontendComputation.compileEntry Loop.output817 =
    InitE.WordStages.source881 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate817_eq
end InitE.FrontendStages.Word
