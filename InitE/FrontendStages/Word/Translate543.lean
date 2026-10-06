import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data543
import InitE.WordStages.Source607
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate527
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate543_eq : InitE.WordFrontendComputation.compileEntry Loop.output543 =
    InitE.WordStages.source607 := by
  kernel_rfl
#print axioms translate543_eq
end InitE.FrontendStages.Word
