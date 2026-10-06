import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data13
import InitE.WordStages.Source77
import InitE.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate13_eq : InitE.WordFrontendComputation.compileEntry Loop.output13 =
    InitE.WordStages.source77 := by
  kernel_rfl
#print axioms translate13_eq
end InitE.FrontendStages.Word
