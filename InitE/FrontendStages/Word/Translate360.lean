import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data360
import InitE.WordStages.Source424
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate344
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate360_eq : InitE.WordFrontendComputation.compileEntry Loop.output360 =
    InitE.WordStages.source424 := by
  kernel_rfl
#print axioms translate360_eq
end InitE.FrontendStages.Word
