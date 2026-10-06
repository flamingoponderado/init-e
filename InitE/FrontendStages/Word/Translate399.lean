import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data399
import InitE.WordStages.Source463
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate383
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate399_eq : InitE.WordFrontendComputation.compileEntry Loop.output399 =
    InitE.WordStages.source463 := by
  kernel_rfl
#print axioms translate399_eq
end InitE.FrontendStages.Word
