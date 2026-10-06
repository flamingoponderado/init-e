import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data26
import InitE.WordStages.Source90
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate10
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate26_eq : InitE.WordFrontendComputation.compileEntry Loop.output26 =
    InitE.WordStages.source90 := by
  kernel_rfl
#print axioms translate26_eq
end InitE.FrontendStages.Word
