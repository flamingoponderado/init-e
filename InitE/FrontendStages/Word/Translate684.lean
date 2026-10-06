import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data684
import InitE.WordStages.Source748
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate668
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate684_eq : InitE.WordFrontendComputation.compileEntry Loop.output684 =
    InitE.WordStages.source748 := by
  kernel_rfl
#print axioms translate684_eq
end InitE.FrontendStages.Word
