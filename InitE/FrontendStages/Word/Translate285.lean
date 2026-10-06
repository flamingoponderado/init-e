import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data285
import InitE.WordStages.Source349
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate269
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate285_eq : InitE.WordFrontendComputation.compileEntry Loop.output285 =
    InitE.WordStages.source349 := by
  kernel_rfl
#print axioms translate285_eq
end InitE.FrontendStages.Word
