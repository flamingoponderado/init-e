import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data11
import InitE.WordStages.Source75
import InitE.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate11_eq : InitE.WordFrontendComputation.compileEntry Loop.output11 =
    InitE.WordStages.source75 := by
  kernel_rfl
#print axioms translate11_eq
end InitE.FrontendStages.Word
