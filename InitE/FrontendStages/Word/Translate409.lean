import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data409
import InitE.WordStages.Source473
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate393
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate409_eq : InitE.WordFrontendComputation.compileEntry Loop.output409 =
    InitE.WordStages.source473 := by
  kernel_rfl
#print axioms translate409_eq
end InitE.FrontendStages.Word
