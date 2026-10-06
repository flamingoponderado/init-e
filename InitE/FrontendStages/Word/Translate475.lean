import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data475
import InitE.WordStages.Source539
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate459
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate475_eq : InitE.WordFrontendComputation.compileEntry Loop.output475 =
    InitE.WordStages.source539 := by
  kernel_rfl
#print axioms translate475_eq
end InitE.FrontendStages.Word
