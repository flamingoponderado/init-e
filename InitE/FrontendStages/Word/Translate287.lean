import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data287
import InitE.WordStages.Source351
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate271
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate287_eq : InitE.WordFrontendComputation.compileEntry Loop.output287 =
    InitE.WordStages.source351 := by
  kernel_rfl
#print axioms translate287_eq
end InitE.FrontendStages.Word
