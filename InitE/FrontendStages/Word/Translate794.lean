import InitE.FrontendStages.Loop.Data794
import InitE.WordStages.Source858
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate778
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate794_eq : InitE.WordFrontendComputation.compileEntry Loop.output794 =
    InitE.WordStages.source858 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate794_eq
end InitE.FrontendStages.Word
