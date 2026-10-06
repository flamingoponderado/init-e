import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data412
import InitE.WordStages.Source476
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate396
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate412_eq : InitE.WordFrontendComputation.compileEntry Loop.output412 =
    InitE.WordStages.source476 := by
  kernel_rfl
#print axioms translate412_eq
end InitE.FrontendStages.Word
