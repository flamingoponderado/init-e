import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data586
import InitE.WordStages.Source650
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate570
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate586_eq : InitE.WordFrontendComputation.compileEntry Loop.output586 =
    InitE.WordStages.source650 := by
  kernel_rfl
#print axioms translate586_eq
end InitE.FrontendStages.Word
