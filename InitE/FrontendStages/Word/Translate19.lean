import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data19
import InitE.WordStages.Source83
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate3
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate19_eq : InitE.WordFrontendComputation.compileEntry Loop.output19 =
    InitE.WordStages.source83 := by
  kernel_rfl
#print axioms translate19_eq
end InitE.FrontendStages.Word
