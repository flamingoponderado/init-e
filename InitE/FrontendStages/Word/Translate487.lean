import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data487
import InitE.WordStages.Source551
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate471
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate487_eq : InitE.WordFrontendComputation.compileEntry Loop.output487 =
    InitE.WordStages.source551 := by
  kernel_rfl
#print axioms translate487_eq
end InitE.FrontendStages.Word
