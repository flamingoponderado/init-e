import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data716
import InitE.WordStages.Source780
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate700
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate716_eq : InitE.WordFrontendComputation.compileEntry Loop.output716 =
    InitE.WordStages.source780 := by
  kernel_rfl
#print axioms translate716_eq
end InitE.FrontendStages.Word
