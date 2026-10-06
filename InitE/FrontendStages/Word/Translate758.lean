import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data758
import InitE.WordStages.Source822
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate742
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate758_eq : InitE.WordFrontendComputation.compileEntry Loop.output758 =
    InitE.WordStages.source822 := by
  kernel_rfl
#print axioms translate758_eq
end InitE.FrontendStages.Word
