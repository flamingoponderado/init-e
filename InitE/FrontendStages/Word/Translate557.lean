import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data557
import InitE.WordStages.Source621
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate541
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate557_eq : InitE.WordFrontendComputation.compileEntry Loop.output557 =
    InitE.WordStages.source621 := by
  kernel_rfl
#print axioms translate557_eq
end InitE.FrontendStages.Word
