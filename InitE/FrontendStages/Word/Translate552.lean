import InitE.FrontendStages.Loop.Data552
import InitE.WordStages.Source616
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate536
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate552_eq : InitE.WordFrontendComputation.compileEntry Loop.output552 =
    InitE.WordStages.source616 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate552_eq
end InitE.FrontendStages.Word
