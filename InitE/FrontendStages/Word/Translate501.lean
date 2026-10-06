import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data501
import InitE.WordStages.Source565
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate485
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate501_eq : InitE.WordFrontendComputation.compileEntry Loop.output501 =
    InitE.WordStages.source565 := by
  kernel_rfl
#print axioms translate501_eq
end InitE.FrontendStages.Word
