import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data10
import InitE.WordStages.Source74
import InitE.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate10_eq : InitE.WordFrontendComputation.compileEntry Loop.output10 =
    InitE.WordStages.source74 := by
  kernel_rfl
#print axioms translate10_eq
end InitE.FrontendStages.Word
