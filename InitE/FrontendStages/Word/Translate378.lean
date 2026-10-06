import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data378
import InitE.WordStages.Source442
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate362
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate378_eq : InitE.WordFrontendComputation.compileEntry Loop.output378 =
    InitE.WordStages.source442 := by
  kernel_rfl
#print axioms translate378_eq
end InitE.FrontendStages.Word
