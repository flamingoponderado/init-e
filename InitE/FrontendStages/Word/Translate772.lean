import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data772
import InitE.WordStages.Source836
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate756
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate772_eq : InitE.WordFrontendComputation.compileEntry Loop.output772 =
    InitE.WordStages.source836 := by
  kernel_rfl
#print axioms translate772_eq
end InitE.FrontendStages.Word
