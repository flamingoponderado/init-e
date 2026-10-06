import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data593
import InitE.WordStages.Source657
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate577
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate593_eq : InitE.WordFrontendComputation.compileEntry Loop.output593 =
    InitE.WordStages.source657 := by
  kernel_rfl
#print axioms translate593_eq
end InitE.FrontendStages.Word
