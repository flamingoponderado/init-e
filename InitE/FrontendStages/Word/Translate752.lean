import InitE.FrontendStages.Loop.Data752
import InitE.WordStages.Source816
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate736
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate752_eq : InitE.WordFrontendComputation.compileEntry Loop.output752 =
    InitE.WordStages.source816 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate752_eq
end InitE.FrontendStages.Word
