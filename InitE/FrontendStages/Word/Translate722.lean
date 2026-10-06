import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data722
import InitE.WordStages.Source786
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate706
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate722_eq : InitE.WordFrontendComputation.compileEntry Loop.output722 =
    InitE.WordStages.source786 := by
  kernel_rfl
#print axioms translate722_eq
end InitE.FrontendStages.Word
