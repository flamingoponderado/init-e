import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data575
import InitE.WordStages.Source639
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate559
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate575_eq : InitE.WordFrontendComputation.compileEntry Loop.output575 =
    InitE.WordStages.source639 := by
  kernel_rfl
#print axioms translate575_eq
end InitE.FrontendStages.Word
