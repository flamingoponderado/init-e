import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data665
import InitE.WordStages.Source729
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate649
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate665_eq : InitE.WordFrontendComputation.compileEntry Loop.output665 =
    InitE.WordStages.source729 := by
  kernel_rfl
#print axioms translate665_eq
end InitE.FrontendStages.Word
