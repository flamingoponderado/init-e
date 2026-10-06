import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data14
import InitE.WordStages.Source78
import InitE.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate14_eq : InitE.WordFrontendComputation.compileEntry Loop.output14 =
    InitE.WordStages.source78 := by
  kernel_rfl
#print axioms translate14_eq
end InitE.FrontendStages.Word
