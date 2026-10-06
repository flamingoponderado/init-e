import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data541
import InitE.WordStages.Source605
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate525
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate541_eq : InitE.WordFrontendComputation.compileEntry Loop.output541 =
    InitE.WordStages.source605 := by
  kernel_rfl
#print axioms translate541_eq
end InitE.FrontendStages.Word
