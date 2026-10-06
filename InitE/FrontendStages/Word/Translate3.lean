import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data3
import InitE.WordStages.Source67
import InitE.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate3_eq : InitE.WordFrontendComputation.compileEntry Loop.output3 =
    InitE.WordStages.source67 := by
  kernel_rfl
#print axioms translate3_eq
end InitE.FrontendStages.Word
