import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data12
import InitE.WordStages.Source76
import InitE.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate12_eq : InitE.WordFrontendComputation.compileEntry Loop.output12 =
    InitE.WordStages.source76 := by
  kernel_rfl
#print axioms translate12_eq
end InitE.FrontendStages.Word
