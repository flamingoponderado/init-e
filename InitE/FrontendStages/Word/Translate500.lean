import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data500
import InitE.WordStages.Source564
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate484
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate500_eq : InitE.WordFrontendComputation.compileEntry Loop.output500 =
    InitE.WordStages.source564 := by
  kernel_rfl
#print axioms translate500_eq
end InitE.FrontendStages.Word
