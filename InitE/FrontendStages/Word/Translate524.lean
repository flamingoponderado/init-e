import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data524
import InitE.WordStages.Source588
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate508
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate524_eq : InitE.WordFrontendComputation.compileEntry Loop.output524 =
    InitE.WordStages.source588 := by
  kernel_rfl
#print axioms translate524_eq
end InitE.FrontendStages.Word
