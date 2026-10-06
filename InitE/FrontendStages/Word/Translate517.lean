import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data517
import InitE.WordStages.Source581
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate501
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate517_eq : InitE.WordFrontendComputation.compileEntry Loop.output517 =
    InitE.WordStages.source581 := by
  kernel_rfl
#print axioms translate517_eq
end InitE.FrontendStages.Word
