import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data394
import InitE.WordStages.Source458
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate378
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate394_eq : InitE.WordFrontendComputation.compileEntry Loop.output394 =
    InitE.WordStages.source458 := by
  kernel_rfl
#print axioms translate394_eq
end InitE.FrontendStages.Word
