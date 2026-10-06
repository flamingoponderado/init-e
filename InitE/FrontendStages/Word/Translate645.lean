import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data645
import InitE.WordStages.Source709
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate629
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate645_eq : InitE.WordFrontendComputation.compileEntry Loop.output645 =
    InitE.WordStages.source709 := by
  kernel_rfl
#print axioms translate645_eq
end InitE.FrontendStages.Word
