import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data200
import InitE.WordStages.Source264
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate184
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate200_eq : InitE.WordFrontendComputation.compileEntry Loop.output200 =
    InitE.WordStages.source264 := by
  kernel_rfl
#print axioms translate200_eq
end InitE.FrontendStages.Word
