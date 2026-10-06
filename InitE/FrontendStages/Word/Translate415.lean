import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data415
import InitE.WordStages.Source479
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate399
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate415_eq : InitE.WordFrontendComputation.compileEntry Loop.output415 =
    InitE.WordStages.source479 := by
  kernel_rfl
#print axioms translate415_eq
end InitE.FrontendStages.Word
