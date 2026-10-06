import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data472
import InitE.WordStages.Source536
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate456
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate472_eq : InitE.WordFrontendComputation.compileEntry Loop.output472 =
    InitE.WordStages.source536 := by
  kernel_rfl
#print axioms translate472_eq
end InitE.FrontendStages.Word
