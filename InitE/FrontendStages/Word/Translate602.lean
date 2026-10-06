import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data602
import InitE.WordStages.Source666
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate586
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate602_eq : InitE.WordFrontendComputation.compileEntry Loop.output602 =
    InitE.WordStages.source666 := by
  kernel_rfl
#print axioms translate602_eq
end InitE.FrontendStages.Word
