import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data400
import InitE.WordStages.Source464
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate384
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate400_eq : InitE.WordFrontendComputation.compileEntry Loop.output400 =
    InitE.WordStages.source464 := by
  kernel_rfl
#print axioms translate400_eq
end InitE.FrontendStages.Word
