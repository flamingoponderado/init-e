import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data5
import InitE.WordStages.Source69
import InitE.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate5_eq : InitE.WordFrontendComputation.compileEntry Loop.output5 =
    InitE.WordStages.source69 := by
  kernel_rfl
#print axioms translate5_eq
end InitE.FrontendStages.Word
