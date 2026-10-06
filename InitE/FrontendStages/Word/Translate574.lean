import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data574
import InitE.WordStages.Source638
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate558
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate574_eq : InitE.WordFrontendComputation.compileEntry Loop.output574 =
    InitE.WordStages.source638 := by
  kernel_rfl
#print axioms translate574_eq
end InitE.FrontendStages.Word
