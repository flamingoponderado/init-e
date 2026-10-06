import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data449
import InitE.WordStages.Source513
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate433
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate449_eq : InitE.WordFrontendComputation.compileEntry Loop.output449 =
    InitE.WordStages.source513 := by
  kernel_rfl
#print axioms translate449_eq
end InitE.FrontendStages.Word
