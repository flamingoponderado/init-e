import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data813
import InitE.WordStages.Source877
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate797
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate813_eq : InitE.WordFrontendComputation.compileEntry Loop.output813 =
    InitE.WordStages.source877 := by
  kernel_rfl
#print axioms translate813_eq
end InitE.FrontendStages.Word
