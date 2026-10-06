import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data380
import InitE.WordStages.Source444
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate364
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate380_eq : InitE.WordFrontendComputation.compileEntry Loop.output380 =
    InitE.WordStages.source444 := by
  kernel_rfl
#print axioms translate380_eq
end InitE.FrontendStages.Word
