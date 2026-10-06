import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data563
import InitE.WordStages.Source627
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate547
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate563_eq : InitE.WordFrontendComputation.compileEntry Loop.output563 =
    InitE.WordStages.source627 := by
  kernel_rfl
#print axioms translate563_eq
end InitE.FrontendStages.Word
