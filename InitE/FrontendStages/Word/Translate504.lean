import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data504
import InitE.WordStages.Source568
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate488
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate504_eq : InitE.WordFrontendComputation.compileEntry Loop.output504 =
    InitE.WordStages.source568 := by
  kernel_rfl
#print axioms translate504_eq
end InitE.FrontendStages.Word
