import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data411
import InitE.WordStages.Source475
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate395
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate411_eq : InitE.WordFrontendComputation.compileEntry Loop.output411 =
    InitE.WordStages.source475 := by
  kernel_rfl
#print axioms translate411_eq
end InitE.FrontendStages.Word
