import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data630
import InitE.WordStages.Source694
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate614
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate630_eq : InitE.WordFrontendComputation.compileEntry Loop.output630 =
    InitE.WordStages.source694 := by
  kernel_rfl
#print axioms translate630_eq
end InitE.FrontendStages.Word
