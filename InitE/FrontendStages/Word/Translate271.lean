import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data271
import InitE.WordStages.Source335
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate255
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate271_eq : InitE.WordFrontendComputation.compileEntry Loop.output271 =
    InitE.WordStages.source335 := by
  kernel_rfl
#print axioms translate271_eq
end InitE.FrontendStages.Word
