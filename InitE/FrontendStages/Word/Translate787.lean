import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data787
import InitE.WordStages.Source851
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate771
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate787_eq : InitE.WordFrontendComputation.compileEntry Loop.output787 =
    InitE.WordStages.source851 := by
  kernel_rfl
#print axioms translate787_eq
end InitE.FrontendStages.Word
