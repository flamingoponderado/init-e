import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data9
import InitE.WordStages.Source73
import InitE.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate9_eq : InitE.WordFrontendComputation.compileEntry Loop.output9 =
    InitE.WordStages.source73 := by
  kernel_rfl
#print axioms translate9_eq
end InitE.FrontendStages.Word
