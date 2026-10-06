import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data683
import InitE.WordStages.Source747
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate667
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate683_eq : InitE.WordFrontendComputation.compileEntry Loop.output683 =
    InitE.WordStages.source747 := by
  kernel_rfl
#print axioms translate683_eq
end InitE.FrontendStages.Word
