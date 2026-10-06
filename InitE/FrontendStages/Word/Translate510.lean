import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data510
import InitE.WordStages.Source574
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate494
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate510_eq : InitE.WordFrontendComputation.compileEntry Loop.output510 =
    InitE.WordStages.source574 := by
  kernel_rfl
#print axioms translate510_eq
end InitE.FrontendStages.Word
