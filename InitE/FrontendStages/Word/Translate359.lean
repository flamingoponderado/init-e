import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data359
import InitE.WordStages.Source423
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate343
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate359_eq : InitE.WordFrontendComputation.compileEntry Loop.output359 =
    InitE.WordStages.source423 := by
  kernel_rfl
#print axioms translate359_eq
end InitE.FrontendStages.Word
