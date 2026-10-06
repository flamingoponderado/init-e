import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data725
import InitE.WordStages.Source789
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate709
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate725_eq : InitE.WordFrontendComputation.compileEntry Loop.output725 =
    InitE.WordStages.source789 := by
  kernel_rfl
#print axioms translate725_eq
end InitE.FrontendStages.Word
