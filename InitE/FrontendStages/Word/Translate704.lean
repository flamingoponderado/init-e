import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data704
import InitE.WordStages.Source768
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate688
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate704_eq : InitE.WordFrontendComputation.compileEntry Loop.output704 =
    InitE.WordStages.source768 := by
  kernel_rfl
#print axioms translate704_eq
end InitE.FrontendStages.Word
