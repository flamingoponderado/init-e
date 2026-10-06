import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data66
import InitE.WordStages.Source130
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate50
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate66_eq : InitE.WordFrontendComputation.compileEntry Loop.output66 =
    InitE.WordStages.source130 := by
  kernel_rfl
#print axioms translate66_eq
end InitE.FrontendStages.Word
