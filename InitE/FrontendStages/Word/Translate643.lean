import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data643
import InitE.WordStages.Source707
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate627
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate643_eq : InitE.WordFrontendComputation.compileEntry Loop.output643 =
    InitE.WordStages.source707 := by
  kernel_rfl
#print axioms translate643_eq
end InitE.FrontendStages.Word
