import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data461
import InitE.WordStages.Source525
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate445
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate461_eq : InitE.WordFrontendComputation.compileEntry Loop.output461 =
    InitE.WordStages.source525 := by
  kernel_rfl
#print axioms translate461_eq
end InitE.FrontendStages.Word
