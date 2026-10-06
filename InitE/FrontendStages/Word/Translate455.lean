import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data455
import InitE.WordStages.Source519
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate439
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate455_eq : InitE.WordFrontendComputation.compileEntry Loop.output455 =
    InitE.WordStages.source519 := by
  kernel_rfl
#print axioms translate455_eq
end InitE.FrontendStages.Word
