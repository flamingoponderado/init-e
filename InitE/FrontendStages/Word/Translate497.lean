import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data497
import InitE.WordStages.Source561
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate481
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate497_eq : InitE.WordFrontendComputation.compileEntry Loop.output497 =
    InitE.WordStages.source561 := by
  kernel_rfl
#print axioms translate497_eq
end InitE.FrontendStages.Word
