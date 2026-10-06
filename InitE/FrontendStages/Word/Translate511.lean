import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data511
import InitE.WordStages.Source575
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate495
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate511_eq : InitE.WordFrontendComputation.compileEntry Loop.output511 =
    InitE.WordStages.source575 := by
  kernel_rfl
#print axioms translate511_eq
end InitE.FrontendStages.Word
